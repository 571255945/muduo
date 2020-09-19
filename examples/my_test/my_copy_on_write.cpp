//
// Created by root on 9/9/20.
//

#include<iostream>
#include<string>
#include<unistd.h>
#include<pthread.h>
#include<assert.h>
#include<set>
#include<boost/shared_ptr.hpp>
#include<boost/weak_ptr.hpp>
#include<boost/enable_shared_from_this.hpp>
using namespace std;
using namespace boost;
class Request;
class Inventory{
public:
    void add(boost::shared_ptr<Request> a){//向Inventory添加一个Request....写者
        boost::weak_ptr<Request> one(a);
        pthread_mutex_lock(&mutex);
        if(!requests.unique()){//采用写时拷贝，若requests有其它读者，则拷贝
            requests.reset(new set<boost::weak_ptr<Request> >(*requests));//强制将requests计数置为1,而读者读取的是读者局部的shared_ptr
            cout<<"add() copy on write"<<endl;
        }
        assert(requests.unique());//判定requests有且仅有一个写者
        requests->insert(one);//添加
        pthread_mutex_unlock(&mutex);
    }
    void remove(boost::shared_ptr<Request> a){//向Inventory移除一个Request...写者
        boost::weak_ptr<Request> one(a);
        pthread_mutex_lock(&mutex);
        if(!requests.unique()){//采用写时拷贝
            requests.reset(new set<boost::weak_ptr<Request> >(*requests));
            cout<<"remove() copy on write"<<endl;
        }
        assert(requests.unique());
        requests->erase(one);//移除
        pthread_mutex_unlock(&mutex);
    }
    void printALL();
    Inventory(){
        pthread_mutex_init(&mutex,NULL);
        requests.reset(new set<boost::weak_ptr<Request>>);
    }
private:
    pthread_mutex_t mutex;
    boost::shared_ptr<set<boost::weak_ptr<Request>>> requests;//采用shared_ptr管理set容器，set元素是管理Request的weak_ptr
};
Inventory g_inventory;
class Request:public boost::enable_shared_from_this<Request>{
public:
    void process(){
        pthread_mutex_lock(&mutex);
        g_inventory.add(shared_from_this());//shared_from_this()将this指针转换为shared_ptr指针
        pthread_mutex_unlock(&mutex);
    }
    void cancel(){//Request对象必须显示调用此函数才能析构
        pthread_mutex_lock(&mutex);
        g_inventory.remove(shared_from_this());
        pthread_mutex_unlock(&mutex);
    }
    ~Request() __attribute__ ((noinline)){//告诉编译器此函数非内联
        cout<<"~Request()"<<endl;
    }
    void print(){// __attribute__ ((noninline)){
        pthread_mutex_lock(&mutex);
        cout<<"Request print()"<<endl;
        pthread_mutex_unlock(&mutex);
    }
private:
    pthread_mutex_t mutex;
};
void Inventory::printALL(){//打印Request对象...读者
    boost::shared_ptr<set<boost::weak_ptr<Request> > > temp;
    {
        pthread_mutex_lock(&mutex);
        temp=requests;//读者采用局部变量temp保存requests副本，然后从temp中读取Request对象
        pthread_mutex_unlock(&mutex);
    }
    boost::shared_ptr<Request> one;
    for(set<boost::weak_ptr<Request> >::iterator it=(*temp).begin();it!=(*temp).end();it++){
        one=it->lock();
        if(one){
            one->print();
            cout<<"lock success"<<endl;
        }
        else{//这一步没什么意义了...采用weak_ptr<Request>作为set容器元素是由于在前面一个程序基础上改的，可以用shared_ptr<Request>作为set元素，不过weak_ptr<Request>有个好处是如果忘记了显式调用Request::cancel()，那么容器也就存放些weak_ptr，不至于使Request对象滞留内存，导致内存泄露....
            temp->erase(it);
            //it--;
            cout<<"lock failure"<<endl;
        }
    }
    cout<<"Inventory::printALL() unlocked"<<endl;
}
void* threadFun(void* arg){
    boost::shared_ptr<Request> one(new Request);
    one->process();
    sleep(1);//###1###
    one->cancel();//Request对象析构前需显示调用此函数进行解注册
    return NULL;
}
int main(){
    pthread_t pid;
    if(pthread_create(&pid,NULL,threadFun,NULL)<0)
        cout<<"pthread_create error"<<endl;
    usleep(500*1000);
    g_inventory.printALL();
    pthread_join(pid,NULL);
    return 0;
}
