//
// Created by root on 1/11/20.
//

#ifndef MUDUO_EVENTLOOP01_H
#define MUDUO_EVENTLOOP01_H

#include "muduo/base/Thread.h"
#include <boost/noncopyable.hpp>
#include "muduo/base/CurrentThread.h"

using namespace muduo;

class EventLoop : boost::noncopyable
{
public:

    EventLoop();
    ~EventLoop();

    void loop();

    void assertInLoopThread()
    {
        if (!isInLoopThread())
        {
            abortNotInLoopThread();
        }
    }

    bool isInLoopThread() const { return threadId_ == CurrentThread::tid(); }

private:

    void abortNotInLoopThread();

    bool looping_; /* atomic */
    const pid_t threadId_;
};


#endif //MUDUO_EVENTLOOP01_H
