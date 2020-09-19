//
// Created by root on 1/1/20.
//

#if 0

#include <iostream>
#include <mutex>
#include <thread>
#include <functional>
#include <vector>
#include <memory>
#include <time.h>
#include <stdio.h>
#include <unistd.h>
using namespace std;


namespace MutexTest{
    std::mutex mux;

    int iGlobal=0;

    void func1(){
        for (int i = 0; i < 10; ++i) {
            usleep(1000*300);
            printf("In sub thread,global = %d\n",iGlobal);
//            lock_guard<std::mutex> lock(mux);//(A)
//            usleep(1000*300000);
            printf("sub lock\n");
            if(mux.try_lock()){// A 处已经锁住的情况下 这里会返回false
                printf("sub try_lock true\n");
                iGlobal++;
                mux.unlock();
            }
        }
    }

    void StartMainThread(){
        for (int i = 0; i < 10; ++i) {
            usleep(1000*500);
            printf("In main thread,global = %d\n",iGlobal);
            lock_guard<std::mutex> lock(mux);
            printf("main lock\n");
            //这里mutex应该是递归锁,当前线程锁住了后,继续try_lock并不会死锁
            if(mux.try_lock()){//如果子线程锁住了 这里也会返回false
                printf("main try_lock true\n");
                iGlobal++;
                mux.unlock();
            }
        }
    }
    void Test(){

//        std::thread t1(func1);
        StartMainThread();
//        t1.join();
        cout<<"global = "<<iGlobal<<endl;
    }


}
namespace TestTemplate{
    //可变参数模板函数
    template <typename ... T>
     void func(T...args){
        std::cout<<"params size = "<< sizeof...(args)<<endl;
    }
    void test(){
        func(1,2,3);
        func("aaa",1,1.2,'c',1+2);
    }
}

int main()
{

//    MutexTest::Test();

    TestTemplate::test();
    return 0;
}


#endif

#if 1

#include <iostream>
using namespace std;

template<typename T>
void print(T& t){
    cout << "lvalue" << endl;
}
template<typename T>
void print(T&& t){
    cout << "rvalue" << endl;
}

template<typename T>
void TestForward(T && v){
    print(v);
    print(std::forward<T>(v));
    print(std::move(v));
}

int main(){
    TestForward(1);
    cout<<"---------"<<endl;
    int x = 1;
    TestForward(x);
    cout<<"---------"<<endl;
    TestForward(std::forward<int>(x));//意思是把x按照int类型来转发
    return 0;
}

#endif