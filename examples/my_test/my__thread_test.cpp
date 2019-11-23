//
// Created by root on 9/28/19.
//

#if 1
#include<iostream>
#include<pthread.h>
#include<unistd.h>
using namespace std;
const int i=5;
__thread int var=i;//两种方式效果一样
//__thread int var=5;//
void* worker1(void* arg);
void* worker2(void* arg);
void* worker3(void* arg);
int main(){
    pthread_t pid1,pid2,pid3;
    //__thread int temp=5;
    static __thread  int temp=10;//修饰函数内的static变量
    pthread_create(&pid1,NULL,worker1,NULL);
    pthread_create(&pid2,NULL,worker2,NULL);
    pthread_create(&pid3,NULL,worker3,NULL);
    pthread_join(pid1,NULL);
    pthread_join(pid2,NULL);
    pthread_join(pid3,NULL);
    cout<<temp<<endl;//输出10
    return 0;
}
void* worker1(void* arg){
    cout<<++var<<endl;//输出 6

    return nullptr;
}
void* worker2(void* arg){
    sleep(1);//等待线程1改变var值，验证是否影响线程2
    cout<<++var<<endl;//输出6
    return nullptr;
}

void* worker3(void* arg){
    sleep(3);
    cout<<++var<<endl;
    return nullptr;
//}
//输出
//    6
//    6
//    6
//    10
//可见在每个thread里__thread类型的变量是不会相互干扰的
#endif

#if 0

#include <pthread.h>
#include <unistd.h>
#include <iostream>

using namespace std;

const int i=5;
__thread int var=i;//两种方式效果一样

static __thread int var2 = 15;//

static void* worker1(void* arg);
static void* worker2(void* arg);

int main(){
    pthread_t pid1,pid2;

    static __thread  int temp=10;//修饰函数内的static变量

    pthread_create(&pid1,NULL,worker1,NULL);
    pthread_create(&pid2,NULL,worker2,NULL);
    pthread_join(pid1,NULL);
    pthread_join(pid2,NULL);

    cout<<"main var addr :" << &var<<endl;
    cout<<"main var2 addr :" << &var2<<endl;
    cout<<temp<<endl;//输出10
    return 0;
}

static void* worker1(void* arg){
    cout<<"worker1 var :" << ++var<<endl;//输出 6
    cout<<"worker1 var addr :" << &var<<endl;
    cout<<"worker1 var2 :" << ++var2<<endl;
    cout<<"worker1 var2 addr :" << &var2<<endl;
    return NULL;
}

static void* worker2(void* arg){
    sleep(1);//等待线程1改变var值，验证是否影响线程2
    cout<< "worker2 var :" << --var<<endl;
    cout<<"worker2 var addr :" << &var<<endl;

    cout<<"worker2 var2 :" << --var2<<endl;
    cout<<"worker2 var2 addr :" << &var2<<endl;
    return NULL;

}
//worker1 var :6
//worker1 var addr :0x7f941d5df6f4
//worker1 var2 :16
//worker1 var2 addr :0x7f941d5df6f8
//worker2 var :4
//worker2 var addr :0x7f941cdde6f4
//worker2 var2 :14
//worker2 var2 addr :0x7f941cdde6f8
//main var addr :0x7f941e717734
//main var2 addr :0x7f941e717738
//10
//上面简单的事例中，总共有三个线程（包括主线程），可以看到通过__thread 修饰的变量，
//在线程中地址都不一样，__thread变量每一个线程有一份独立实体，各个线程的值互不干扰。
#endif