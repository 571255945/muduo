//
// Created by root on 9/17/19.
//

#ifndef MUDUO_MY_ECHO_H
#define MUDUO_MY_ECHO_H
/*
 #include "muduo/net/TcpServer.h"

// RFC 862
class EchoServer
{
 public:
  EchoServer(muduo::net::EventLoop* loop,
             const muduo::net::InetAddress& listenAddr);

  void start();  // calls server_.start();

 private:
  void onConnection(const muduo::net::TcpConnectionPtr& conn);

  void onMessage(const muduo::net::TcpConnectionPtr& conn,
                 muduo::net::Buffer* buf,
                 muduo::Timestamp time);

  muduo::net::TcpServer server_;
};

 */
#include <muduo/net/TcpServer.h>
class my_echo_server {
public:
    my_echo_server(muduo::net::EventLoop *loop,
            const muduo::net::InetAddress& listenAddr);
    void Start();
private:
    void OnConnection(const muduo::net::TcpConnectionPtr& conn);
    void OnMessage(const muduo::net::TcpConnectionPtr& conn,
            muduo::net::Buffer* buf,
            muduo::Timestamp time);
    muduo::net::TcpServer server_;

};


#endif //MUDUO_MY_ECHO_H
