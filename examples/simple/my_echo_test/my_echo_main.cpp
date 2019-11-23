//
// Created by root on 9/17/19.
//

#include <iostream>
#include "my_echo.h"

#include <muduo/base/Logging.h>
#include <muduo/net/EventLoop.h>

#include <unistd.h>


using namespace std;

int main()
{
/*
   LOG_INFO << "pid = " << getpid();
  muduo::net::EventLoop loop;
  muduo::net::InetAddress listenAddr(2007);
  EchoServer server(&loop, listenAddr);
  server.start();
  loop.loop();
 */
    cout<<"hello test echo"<<endl;
    LOG_INFO<<"pid = "<<getpid();
    muduo::net::EventLoop loop;
    muduo::net::InetAddress listenAddr(2006);
    my_echo_server server(&loop,listenAddr);
    server.Start();
    loop.loop();

    return 0;
}