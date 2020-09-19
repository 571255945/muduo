// excerpts from http://code.google.com/p/muduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include "EventLoop.h"

#include "Channel.h"
#include "Poller.h"

//#include "logging/Logging.h"
#include <iostream>


#include <assert.h>

using namespace muduo;
using namespace std;
__thread EventLoop* t_loopInThisThread = 0;
const int kPollTimeMs = 10000;

EventLoop::EventLoop()
  : looping_(false),
    quit_(false),
    threadId_(CurrentThread::tid()),
    poller_(new Poller(this))
{
//    LOG_TRACE << "EventLoop created " << this << " in thread " << threadId_;
    std::cout << "EventLoop created " << this << " in thread " << threadId_<<std::endl;
  if (t_loopInThisThread)
  {
//    LOG_FATAL << "Another EventLoop " << t_loopInThisThread
//              << " exists in this thread " << threadId_;
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
  quit_ = false;

  while (!quit_)
  {
    activeChannels_.clear();
    poller_->poll(kPollTimeMs, &activeChannels_);
    for (ChannelList::iterator it = activeChannels_.begin();
        it != activeChannels_.end(); ++it)
    {
      (*it)->handleEvent();
    }
  }

  std::cout << "EventLoop " << this << " stop looping"<<std::endl;
  looping_ = false;
}

void EventLoop::quit()
{
  quit_ = true;
  // wakeup();
}

void EventLoop::updateChannel(Channel* channel)
{
  assert(channel->ownerLoop() == this);
  assertInLoopThread();
  poller_->updateChannel(channel);
}

void EventLoop::abortNotInLoopThread()
{
  std::cout << "EventLoop::abortNotInLoopThread - EventLoop " << this
            << " was created in threadId_ = " << threadId_
            << ", current thread id = " <<  CurrentThread::tid()<<std::endl;
}

