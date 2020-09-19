//
// Created by root on 1/11/20.
//

#include "eventloop01.h"

//#include "logging/Logging.h"

#include <assert.h>
#include <poll.h>

#include <iostream>

using namespace std;

using namespace muduo;

__thread EventLoop* t_loopInThisThread = 0;

EventLoop::EventLoop()
        : looping_(false),
          threadId_(CurrentThread::tid())
{
    std::cout << "EventLoop created " << this << " in thread " << threadId_<<std::endl;
    if (t_loopInThisThread)
    {
        std::cout << "Another EventLoop " << t_loopInThisThread
                  << " exists in this thread " << threadId_<<std::endl;
    }
    else
    {
        t_loopInThisThread = this;
    }
}

EventLoop::~EventLoop()
{
    assert(!looping_);
    t_loopInThisThread = NULL;
}

void EventLoop::loop()
{
    assert(!looping_);
    assertInLoopThread();
    looping_ = true;

    //这里相当于是延时5s
    ::poll(NULL, 0, 5*1000);

    std::cout << "EventLoop " << this << " stop looping"<<endl;
    looping_ = false;
}

void EventLoop::abortNotInLoopThread()
{
    std::cout  << "EventLoop::abortNotInLoopThread - EventLoop " << this
              << " was created in threadId_ = " << threadId_
              << ", current thread id = " <<  CurrentThread::tid()<<endl;
}
