//
// Created by root on 9/17/19.
//

#include "my_echo.h"
#include <muduo/base/Logging.h>
#include <iostream>

using std::placeholders::_1;
using std::placeholders::_2;
using std::placeholders::_3;

/*
 EchoServer::EchoServer(muduo::net::EventLoop* loop,
                       const muduo::net::InetAddress& listenAddr)
  : server_(loop, listenAddr, "EchoServer")
{
  server_.setConnectionCallback(
      std::bind(&EchoServer::onConnection, this, _1));
  server_.setMessageCallback(
      std::bind(&EchoServer::onMessage, this, _1, _2, _3));
}

void EchoServer::start()
{
  server_.start();
}
 */
my_echo_server::my_echo_server(muduo::net::EventLoop *loop,
        const muduo::net::InetAddress &listenAddr)
        :server_(loop,listenAddr,"My_Echo_Server"){
    server_.setConnectionCallback(
            std::bind(&my_echo_server::OnConnection,this,_1)
            );
    server_.setMessageCallback(
            std::bind(&my_echo_server::OnMessage,this,_1,_2,_3)
            );
}
void my_echo_server::Start() {
    server_.start();
}

void my_echo_server::OnConnection(const muduo::net::TcpConnectionPtr& conn){
    /*
       LOG_INFO << "EchoServer - " << conn->peerAddress().toIpPort() << " -> "
           << conn->localAddress().toIpPort() << " is "
           << (conn->connected() ? "UP" : "DOWN");
     */
    LOG_INFO<<"My_Echo_Server - "<<conn->peerAddress().toIpPort()<<" -> "
    <<conn->localAddress().toIpPort()<< " is "
    <<(conn->connected()?"UP":"DOWN");
}
void my_echo_server::OnMessage(const muduo::net::TcpConnectionPtr& conn,
               muduo::net::Buffer* buf,
               muduo::Timestamp time)
{
   /*
      muduo::string msg(buf->retrieveAllAsString());
  LOG_INFO << conn->name() << " echo " << msg.size() << " bytes, "
           << "data received at " << time.toString();
  conn->send(msg);
    */

   muduo::string msg(buf->retrieveAllAsString());
   LOG_INFO<<conn->name()<<" my echo test "<<msg.size()<<" bytes,"
   <<"data receive at "<<time.toString();

   std::cout<<conn->name()<<" std::cout "<<msg.size()<<" bytes,"
            <<"data receive at "<<time.toString()<<std::endl;
   conn->send(msg);
}