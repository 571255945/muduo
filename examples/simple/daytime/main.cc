#include "examples/simple/daytime/daytime.h"

#include "muduo/base/Logging.h"
#include "muduo/net/EventLoop.h"

#include <unistd.h>

using namespace muduo;
using namespace muduo::net;


int main()
{
    LOG_INFO<<"pid  = "<<getpid();
    EventLoop loop;
    InetAddress listenAddr(2014);
    DaytimeServer server(&loop,listenAddr);
    server.start();
    loop.loop();
}
