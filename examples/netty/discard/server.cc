#include "muduo/net/TcpServer.h"

#include "muduo/base/Atomic.h"
#include "muduo/base/Logging.h"
#include "muduo/base/Thread.h"
#include "muduo/net/EventLoop.h"
#include "muduo/net/InetAddress.h"

#include <utility>

#include <stdio.h>
#include <unistd.h>

using namespace muduo;
using namespace muduo::net;

int numThreads = 0;

class DiscardServer
{
 public:
  DiscardServer(EventLoop* loop, const InetAddress& listenAddr)
    : server_(loop, listenAddr, "DiscardServer"),
      oldCounter_(0),
      startTime_(Timestamp::now())
  {
      //设置链接回调
    server_.setConnectionCallback(
        std::bind(&DiscardServer::onConnection, this, _1));

    //设置消息接收回调
    server_.setMessageCallback(
        std::bind(&DiscardServer::onMessage, this, _1, _2, _3));

    //设置server线程数量
    server_.setThreadNum(numThreads);

    //每3秒执行一次定时器（如果上面设置线程数量那么server的回调可能是多线程的，
    // 但loop是单线程的所以，回调中不用考虑线程安全问题）
    loop->runEvery(3.0, std::bind(&DiscardServer::printThroughput, this));
  }

  void start()
  {
    LOG_INFO << "starting " << numThreads << " threads.";
    server_.start();
  }

 private:
  void onConnection(const TcpConnectionPtr& conn)
  {
    LOG_TRACE << conn->peerAddress().toIpPort() << " -> "
              << conn->localAddress().toIpPort() << " is "
              << (conn->connected() ? "UP" : "DOWN");
  }

  void onMessage(const TcpConnectionPtr& conn, Buffer* buf, Timestamp)
  {
      //当多个线程调用时用原子操作保证线程的安全
    size_t len = buf->readableBytes();
    transferred_.add(len);
    receivedMessages_.incrementAndGet();
    buf->retrieveAll();
  }

  void printThroughput()
  {
      //流量统计
    Timestamp endTime = Timestamp::now();
    int64_t newCounter = transferred_.get();
    int64_t bytes = newCounter - oldCounter_;
    int64_t msgs = receivedMessages_.getAndSet(0);
    double time = timeDifference(endTime, startTime_);

    //printf 是线程安全的，std::cout/cin不是线程安全的
    printf("%4.3f MiB/s %4.3f Ki Msgs/s %6.2f bytes per msg\n",
        static_cast<double>(bytes)/time/1024/1024,
        static_cast<double>(msgs)/time/1024,
        static_cast<double>(bytes)/static_cast<double>(msgs));

    oldCounter_ = newCounter;
    startTime_ = endTime;
  }

  TcpServer server_;

  //原子类型，保证线程安全
  AtomicInt64 transferred_;
  AtomicInt64 receivedMessages_;
  int64_t oldCounter_;
  Timestamp startTime_;
};

int main(int argc, char* argv[])
{
  LOG_INFO << "pid = " << getpid() << ", tid = " << CurrentThread::tid();
  if (argc > 1)
  {
    numThreads = atoi(argv[1]);
  }
  EventLoop loop;

//  EventLoop* looptest = nullptr;
  InetAddress listenAddr(2009);
  DiscardServer server(&loop, listenAddr);
//    DiscardServer server(looptest, listenAddr);

  server.start();

  loop.loop();
}

