//
// Created by root on 10/28/19.
//
//#include "lib/common.h"
#include<iostream>
#include <sys/un.h>
#include <sys/socket.h>
#include <netinet/in.h>

#include <string.h>
#include <arpa/inet.h>
#include <errno.h>
#include <error.h>
#include <unistd.h>

#define    SERV_PORT      43211
#define    MAXLINE        4096
#define    UNIXSTR_PATH   "/var/lib/unixstream1.sock"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096
#include "message_objecte.h"

#define    MAXLINE     4096
#define    KEEP_ALIVE_TIME  10
#define    KEEP_ALIVE_INTERVAL  3
#define    KEEP_ALIVE_PROBETIMES  3
#define DEBUG_TEST

int main(int argc, char **argv) {
#ifndef DEBUG_TEST
    if (argc != 2) {
        error(1, 0, "usage: tcpclient <IPaddress>");
    }
#endif
    int socket_fd;
    socket_fd = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(SERV_PORT);
#ifndef DEBUG_TEST
    inet_pton(AF_INET, argv[1], &server_addr.sin_addr);
#else
    inet_pton(AF_INET, "127.0.0.1", &server_addr.sin_addr);
#endif

    socklen_t server_len = sizeof(server_addr);
    int connect_rt = connect(socket_fd, (struct sockaddr *) &server_addr, server_len);
    if (connect_rt < 0) {
        error(1, errno, "connect failed ");
    }

    char recv_line[MAXLINE + 1];
    int n;

    fd_set readmask;
    fd_set allreads;


    struct timeval tv;
    int heartbeats = 0;

    tv.tv_sec = KEEP_ALIVE_TIME;
    tv.tv_usec = 0;

    messageObject messageObject;

    FD_ZERO(&allreads);
    FD_SET(0, &allreads);
    FD_SET(socket_fd, &allreads);
    for (;;) {
        readmask = allreads;
        int rc = select(socket_fd + 1, &readmask, NULL, NULL, &tv);
        if (rc < 0) {
            error(1, errno, "select failed");
        }
        if (rc == 0) {
            //调用 select 函数，感知 I/O 事件。这里的 I/O 事件，除了套接字上的读操作之外，
            // 还有在 39-40 行设置的超时事件。当 KEEP_ALIVE_TIME 这段时间到达之后，
            // select 函数会返回 0
            if (++heartbeats > KEEP_ALIVE_PROBETIMES) {
                error(1, 0, "connection dead\n");
            }
            printf("sending heartbeat #%d\n", heartbeats);
            messageObject.type = htonl(MSG_PING);
//            messageObject.data = "aaa";
            stpncpy(messageObject.data,"hello world",12);

            //原代码中(void *) &messageObject前面是（char*） 貌似只要client和服务端对应起来就行
            rc = send(socket_fd, (void *) &messageObject, sizeof(messageObject), 0);
            if (rc < 0) {
                error(1, errno, "send failure");
            }
            tv.tv_sec = KEEP_ALIVE_INTERVAL;
            continue;
        }
        if (FD_ISSET(socket_fd, &readmask)) {
            n = read(socket_fd, recv_line, MAXLINE);
            if (n < 0) {
                error(1, errno, "read error");
            } else if (n == 0) {
                error(1, 0, "server terminated \n");
            }
            printf("received heartbeat, make heartbeats to 0 \n");
            heartbeats = 0;
            tv.tv_sec = KEEP_ALIVE_TIME;
        }
    }
}


