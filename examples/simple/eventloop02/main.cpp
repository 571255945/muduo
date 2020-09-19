//
// Created by root on 1/11/20.
//

#include "EventLoop.h"
#include "muduo/base/Thread.h"
#include "muduo/base/CurrentThread.h"
#include <stdio.h>


#if 0
void threadFunc()
{
    printf("threadFunc(): pid = %d, tid = %d\n",
           getpid(), muduo::CurrentThread::tid());

    EventLoop loop;
    loop.loop();
}

int main()
{
    printf("main(): pid = %d, tid = %d\n",
           getpid(), muduo::CurrentThread::tid());

    EventLoop loop;

    muduo::Thread thread(threadFunc);
    thread.start();

    loop.loop();
    pthread_exit(NULL);
}

#endif

#if 0 //测试eventloop只能在自身线程中运行
EventLoop* g_loop;

void threadFunc()
{
    g_loop->loop();
}

int main()
{
    EventLoop loop;
    g_loop = &loop;
    muduo::Thread t(threadFunc);
    t.start();
    t.join();
}


#endif


#if 0

#include <stdio.h>
#include <sys/timerfd.h>
#include "Channel.h"

EventLoop* g_loop;

void timeout()
{
    printf("Timeout!\n");
    g_loop->quit();
}

int main()
{
    EventLoop loop;
    g_loop = &loop;

    int timerfd = ::timerfd_create(CLOCK_MONOTONIC, TFD_NONBLOCK | TFD_CLOEXEC);
    Channel channel(&loop, timerfd);
    channel.setReadCallback(timeout);
    channel.enableReading();

    struct itimerspec howlong;
    bzero(&howlong, sizeof howlong);
    howlong.it_value.tv_sec = 5;
    ::timerfd_settime(timerfd, 0, &howlong, NULL);

    loop.loop();

    ::close(timerfd);
}
#endif


#if 1

#include <sys/timerfd.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>        /* Definition of uint64_t */

#define handle_error(msg) \
       do { perror(msg); exit(EXIT_FAILURE); } while (0)

static void print_elapsed_time(void)
{
    static struct timespec start;
    struct timespec curr;
    static int first_call = 1;
    int secs, nsecs;

    if (first_call) {
        first_call = 0;
        if (clock_gettime(CLOCK_MONOTONIC, &start) == -1)
            handle_error("clock_gettime");
    }

    if (clock_gettime(CLOCK_MONOTONIC, &curr) == -1)
        handle_error("clock_gettime");

    secs = int(curr.tv_sec - start.tv_sec);
    nsecs = int(curr.tv_nsec - start.tv_nsec);
    if (nsecs < 0) {
        secs--;
        nsecs += 1000000000;
    }
    printf("%d.%03d: ", secs, (nsecs + 500000) / 1000000);
}

int
main(int argc, char *argv[])
{
    struct itimerspec new_value;
    int max_exp, fd;
    struct timespec now;
    int exp, tot_exp;
    ssize_t s;

    if (clock_gettime(CLOCK_REALTIME, &now) == -1)
        handle_error("clock_gettime");

    new_value.it_value.tv_sec = now.tv_sec + atoi("3");//第一次3秒后超时
    new_value.it_value.tv_nsec = now.tv_nsec;

    new_value.it_interval.tv_sec = atoi("1");//每隔1秒超时一次
    new_value.it_interval.tv_nsec = 0;

    //最多超时3次
    max_exp = atoi("3");


//int timerfd_create(int clockid, int flags);
//它是用来创建一个定时器描述符timerfd
//第一个参数：clockid指定时间类型，有两个值：
//CLOCK_REALTIME :Systemwide realtime clock. 系统范围内的实时时钟
//CLOCK_MONOTONIC:以固定的速率运行，从不进行调整和复位 ,它不受任何系统time-of-day时钟修改的影响
//第二个参数：flags可以是0或者O_CLOEXEC/O_NONBLOCK。
//返回值：timerfd（文件描述符）
    fd = timerfd_create(CLOCK_REALTIME, 0);
    if (fd == -1)
        handle_error("timerfd_create");

//    struct itimerspec {
//        struct timespec it_interval;  /* Interval for periodic timer */
//        struct timespec it_value;     /* Initial expiration */
//    };
//    第二个结构体itimerspec就是timerfd要设置的超时结构体，它的成员it_value表示定时器第一次超时时间，
//    it_interval表示之后的超时时间即每隔多长时间超时
    if (timerfd_settime(fd, TFD_TIMER_ABSTIME, &new_value, NULL) == -1)
        handle_error("timerfd_settime");

    print_elapsed_time();
    printf("timer started\n");

    for (tot_exp = 0; tot_exp < max_exp;) {
        s = read(fd, &exp, sizeof(uint64_t));
        if (s != sizeof(uint64_t))
            handle_error("read");

        tot_exp += exp;
        print_elapsed_time();
        printf("read: %d; total=%d\n",
                exp,
                tot_exp);
    }

    exit(EXIT_SUCCESS);
}

#endif