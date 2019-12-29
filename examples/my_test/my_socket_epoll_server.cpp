//
// Created by root on 11/14/19.
//

#include  <sys/epoll.h>
#include "lib/common.h"

#include<iostream>
#include <fcntl.h>
#include <poll.h>
#include <sys/un.h>
#include <sys/socket.h>
#include <netinet/in.h>

#include <string.h>
#include <arpa/inet.h>
#include <errno.h>
#include <error.h>
#include <unistd.h>
#include "message_objecte.h"
#include    <signal.h>

#define    SERV_PORT      43211
#define    MAXLINE        4096
//#define    UNIXSTR_PATH   "/var/lib/unixstream1.sock"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096
#define MAXLINE 4096

#define MAX_LINE 1024
#define FD_INIT_SIZE 128
#define MAXEVENTS 128


int tcp_nonblocking_server_listen(int port) {
    int listenfd;
    listenfd = socket(AF_INET, SOCK_STREAM, 0);

    //调用 fcntl 将监听套接字设置为非阻塞
    fcntl(listenfd, F_SETFL, O_NONBLOCK);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server_addr.sin_port = htons(port);

    int on = 1;
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

    int rt1 = bind(listenfd, (struct sockaddr *) &server_addr, sizeof(server_addr));
    if (rt1 < 0) {
        error(1, errno, "bind failed ");
    }

    int rt2 = listen(listenfd, LISTENQ);
    if (rt2 < 0) {
        error(1, errno, "listen failed ");
    }

    signal(SIGPIPE, SIG_IGN);//SIG_IGN :Ignore signal.

    return listenfd;
}

char rot13_char(char c) {
    if ((c >= 'a' && c <= 'm') || (c >= 'A' && c <= 'M'))
        return c + 13;
    else if ((c >= 'n' && c <= 'z') || (c >= 'N' && c <= 'Z'))
        return c - 13;
    else
        return c;
}

int main(int argc, char **argv) {
    int listen_fd, socket_fd;
    int n, i;
    int efd;
    struct epoll_event event;
    struct epoll_event *events;

    listen_fd = tcp_nonblocking_server_listen(SERV_PORT);

    efd = epoll_create1(0);
    if (efd == -1) {
        error(1, errno, "epoll create failed");
    }

//    调用 epoll_ctl 将监听套接字对应的 I/O 事件进行了注册，
//    这样在有新的连接建立之后，就可以感知到。注意这里使用的是 edge-triggered（边缘触发）
    event.data.fd = listen_fd;
    event.events = EPOLLIN | EPOLLET;
    if (epoll_ctl(efd, EPOLL_CTL_ADD, listen_fd, &event) == -1) {
        error(1, errno, "epoll_ctl add listen fd failed");
    }

    /* Buffer where events are returned */
    events = (epoll_event*)calloc(MAXEVENTS, sizeof(event));

    /*
     * EPOLLIN：表示对应的文件描述字可以读；
     * EPOLLOUT：表示对应的文件描述字可以写；
     * EPOLLRDHUP：表示套接字的一端已经关闭，或者半关闭；
     * EPOLLHUP：表示对应的文件描述字被挂起；
     * EPOLLET：设置为 edge-triggered，默认为 level-triggered。
     * */
    /*主循环调用 epoll_wait 函数分发 I/O 事件，当 epoll_wait
     * 成功返回时，通过遍历返回的 event 数组，就直接可以知道发生的 I/O 事件。*/
    while (1) {
        n = epoll_wait(efd, events, MAXEVENTS, -1);
        printf("epoll_wait wakeup\n");
        for (i = 0; i < n; i++) {
            if ((events[i].events & EPOLLERR) ||
                (events[i].events & EPOLLHUP) ||
                (!(events[i].events & EPOLLIN))) {
                fprintf(stderr, "epoll error\n");
                close(events[i].data.fd);
                continue;
            } else if (listen_fd == events[i].data.fd) {
                struct sockaddr_storage ss;
                socklen_t slen = sizeof(ss);
                int fd = accept(listen_fd, (struct sockaddr *) &ss, &slen);
                if (fd < 0) {
                    error(1, errno, "accept failed");
                } else {
                    //调用 fcntl 将监听套接字设置为非阻塞
                    fcntl(fd, F_SETFL, O_NONBLOCK);
                    event.data.fd = fd;
                    event.events = EPOLLIN | EPOLLET; //edge-triggered
                    //event.events = EPOLLIN; //level-triggered
                    if (epoll_ctl(efd, EPOLL_CTL_ADD, fd, &event) == -1) {
                        error(1, errno, "epoll_ctl add connection fd failed");
                    }
                }
                continue;
            } else {
                //处理了已连接套接字上的可读事件，读取字节流，编码后再回应给客户端。
                socket_fd = events[i].data.fd;
                printf("get event on socket fd == %d \n", socket_fd);
                while (1) {
                    char buf[512];
                    //如果套接字对应的接收缓冲区没有数据可读，在非阻塞情况下 read
                    // 调用会立即返回，一般返回 EWOULDBLOCK 或 EAGAIN 出错信息

                    //当接收缓冲区为空时，阻塞模式会等待，非阻塞模式立即返回 -1，
                    // 并有 EWOULDBLOCK 或 EAGAIN 错误。
                    if ((n = read(socket_fd, buf, sizeof(buf))) < 0) {
                        //如果errno==EAGAIN 说明应该继续尝试去读，如果不是就按错误处理
                        if (errno != EAGAIN) {
                            error(1, errno, "read error");
                            close(socket_fd);
                        }
                        break;
                    } else if (n == 0) {//断开客户端
                        close(socket_fd);
                        break;
                    } else {
                        for (i = 0; i < n; ++i) {
                            buf[i] = rot13_char(buf[i]);
                        }
                        if (write(socket_fd, buf, n) < 0) {
                            error(1, errno, "write error");
                        }
                    }
                }
            }
        }
    }

    free(events);
    close(listen_fd);
}
