//
// Created by root on 1/12/20.
//

#include "EventLoop.h"
#include "muduo/base/Thread.h"
#include <stdio.h>

#include "Channel.h"
#include <sys/timerfd.h>
#include <boost/bind.hpp>
#include "EventLoopThread.h"

#if 0 //test1
void threadFunc()
{
    printf("threadFunc(): pid = %d, tid = %d\n",
           getpid(), muduo::CurrentThread::tid());

    muduo::EventLoop loop;
    loop.loop();
}

int main()
{
    printf("main(): pid = %d, tid = %d\n",
           getpid(), muduo::CurrentThread::tid());

    muduo::EventLoop loop;

    muduo::Thread thread(threadFunc);
    thread.start();

    loop.loop();
    pthread_exit(NULL);
}

#endif

#if 0 //test2
muduo::EventLoop* g_loop;

void threadFunc()
{
    g_loop->loop();
}

int main()
{
    muduo::EventLoop loop;
    g_loop = &loop;
    muduo::Thread t(threadFunc);
    t.start();
    t.join();
}

#endif

#if 0 //test3
muduo::EventLoop* g_loop;

void timeout()
{
  printf("Timeout!\n");
  g_loop->quit();
}

int main()
{
  muduo::EventLoop loop;
  g_loop = &loop;

  int timerfd = ::timerfd_create(CLOCK_MONOTONIC, TFD_NONBLOCK | TFD_CLOEXEC);
  muduo::Channel channel(&loop, timerfd);
  channel.setReadCallback(timeout);
  channel.enableReading();

  struct itimerspec howlong;
  bzero(&howlong, sizeof howlong);
  howlong.it_value.tv_sec = 5;
  ::timerfd_settime(timerfd, 0, &howlong, NULL);

  loop.loop();

  ::close(timerfd);
}
#endif

#if 0//test4

int cnt = 0;
muduo::EventLoop* g_loop;

void printTid()
{
  printf("pid = %d, tid = %d\n", getpid(), muduo::CurrentThread::tid());
  printf("now %s\n", muduo::Timestamp::now().toString().c_str());
}

void print(const char* msg)
{
  printf("msg %s %s\n", muduo::Timestamp::now().toString().c_str(), msg);
  if (++cnt == 20)
  {
    g_loop->quit();
  }
}

int main()
{
  printTid();
  muduo::EventLoop loop;
  g_loop = &loop;

  print("main");
  loop.runAfter(1, boost::bind(print, "once1"));
  loop.runAfter(1.5, boost::bind(print, "once1.5"));
  loop.runAfter(2.5, boost::bind(print, "once2.5"));
  loop.runAfter(3.5, boost::bind(print, "once3.5"));
  loop.runEvery(2, boost::bind(print, "every2"));
  loop.runEvery(3, boost::bind(print, "every3"));

  loop.loop();
  print("main loop exits");
  sleep(1);
}

#endif

#if 0//test5

muduo::EventLoop* g_loop;
int g_flag = 0;

void run4()
{
    printf("run4(): pid = %d, flag = %d\n", getpid(), g_flag);
    g_loop->quit();
}

void run3()
{
    printf("run3(): pid = %d, flag = %d\n", getpid(), g_flag);
    g_loop->runAfter(3, run4);
    g_flag = 3;
}

void run2()
{
    printf("run2(): pid = %d, flag = %d\n", getpid(), g_flag);
    g_loop->queueInLoop(run3);
}

void run1()
{
    g_flag = 1;
    printf("run1(): pid = %d, flag = %d\n", getpid(), g_flag);
    g_loop->runInLoop(run2);
    g_flag = 2;
}

int main()
{
    printf("main(): pid = %d, flag = %d\n", getpid(), g_flag);

    muduo::EventLoop loop;
    g_loop = &loop;

    loop.runAfter(2, run1);
    loop.loop();
    printf("main(): pid = %d, flag = %d\n", getpid(), g_flag);
}

#endif


#if 1 //test6

void runInThread()
{
  printf("runInThread(): pid = %d, tid = %d\n",
         getpid(), muduo::CurrentThread::tid());
}

int main()
{
  printf("main(): pid = %d, tid = %d\n",getpid(), muduo::CurrentThread::tid());

  muduo::EventLoopThread loopThread;
  muduo::EventLoop* loop = loopThread.startLoop();
  loop->runInLoop(runInThread);
  sleep(1);
  loop->runAfter(2, runInThread);
  sleep(3);
  loop->quit();

  printf("exit main().\n");
}


#endif