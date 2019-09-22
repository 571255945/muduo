#include "examples/simple/discard/discard.h"

#include "muduo/base/Logging.h"
#include "muduo/net/EventLoop.h"

#include <unistd.h>

using namespace muduo;
using namespace muduo::net;



int main()
{
    //getpid获取当前进程ID
    LOG_INFO<<"pid = "<<getpid();
    muduo::net::EventLoop loop;
    InetAddress address(2019);

    DiscardServer server(&loop,address);
    server.start();
    loop.loop();
}
