#include "examples/simple/discard/discard.h"

#include "muduo/base/Logging.h"

using namespace muduo;
using namespace muduo::net;

DiscardServer::DiscardServer(EventLoop* loop,
                             const InetAddress& listenAddr)
  : server_(loop, listenAddr, "DiscardServer")
{
  server_.setConnectionCallback(
      std::bind(&DiscardServer::onConnection, this, _1));
  server_.setMessageCallback(
      std::bind(&DiscardServer::onMessage, this, _1, _2, _3));
}

void DiscardServer::start()
{
  server_.start();
}

void DiscardServer::onConnection(const TcpConnectionPtr& conn)
{
  LOG_INFO << "DiscardServer - " << conn->peerAddress().toIpPort() << " -> "
           << conn->localAddress().toIpPort() << " is "
           << (conn->connected() ? "UP" : "DOWN");
}
//关注消息数据的到达
void DiscardServer::onMessage(const TcpConnectionPtr& conn,
                              Buffer* buf,
                              Timestamp time)
{
    //一个字符一个字节，最后还有一个回车符‘\n’所以： 字节数 = 字符个数 + 1
  string msg(buf->retrieveAllAsString());
  LOG_INFO << conn->name() << " discards " << msg.size()
           << " bytes received at " << time.toString();
}

