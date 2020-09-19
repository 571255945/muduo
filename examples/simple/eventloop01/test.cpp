//
// Created by root on 1/11/20.
//

#include "eventloop01.h"
#include "muduo/base/Thread.h"
#include <stdio.h>
#include <iostream>

#include <thread>
#include <functional>

#include <sys/syscall.h>//SYS_gettid

using namespace std;


#if 1

namespace T01{

    EventLoop* g_loop;

    void threadFunc()
    {
        g_loop->loop();
    }

    //bad test
    void test01()
    {
        EventLoop loop;
        g_loop = &loop;
        muduo::Thread t(threadFunc);
        t.start();
        t.join();
    }
}

namespace T00{
    void threadFunc()
    {
        printf("threadFunc(): pid = %d, tid = %d\n",
               getpid(), muduo::CurrentThread::tid());

        EventLoop loop;
        loop.loop();
    }
    void test00()
    {
        printf("main(): pid = %d, tid = %d\n",
               getpid(), muduo::CurrentThread::tid());

        EventLoop loop;

        muduo::Thread thread(threadFunc);
        thread.start();

        loop.loop();
        pthread_exit(NULL);
    }

    //验证主线程只能创建一个loop
    void test01()
    {
        EventLoop loop1;
        EventLoop loop2;
        loop1.loop();
        loop2.loop();
    }
}

//测试getpid
namespace CommomTest{

    //测试CurrentThread::tid()的实现
    int gettid()
    {
        //测试 muduo::CurrentThread::tid() 的实现
        return static_cast<pid_t>(::syscall(SYS_gettid));
    }
    //getpid返回当前进程标识
    void func1(){
        cout<<" test gettid "<<gettid()<<endl;
        cout<<"Thread pid = "<<getpid()<<", current pid="<< muduo::CurrentThread::tid()<<endl;
    }




    void GetPidTest(){
//        cout<<"main pid = "<<getpid()<<endl;
        cout<<"main"<<endl;
        func1();
    }

    void GetThreadPidTest(){
        thread t1(func1);
        t1.join();
    }

    void GetThreadPidTest2(){
        cout<<"sub-thread"<<endl;
        muduo::Thread t2(func1);
        t2.start();
        pthread_exit(NULL);
    }
}




int main()
{
//    T00::test00();
    T00::test01();

//    T01::test01();

#if 0
    CommomTest::GetPidTest();
    CommomTest::GetThreadPidTest2();
    /*
    main
     test gettid 24786
    Thread pid = 24786, current pid=24786
    sub-thread
     test gettid 24788
    Thread pid = 24786, current pid=24788
     */

#endif
}

#endif
