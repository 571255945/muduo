//
// Created by root on 10/4/19.
//

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
#define Debug_Test

int main(int argc, char **argv) {
#ifndef Debug_Test
    if (argc != 2) {
        error(1, 0, "usage: graceclient <IPaddress>");

    }
#endif
    int socket_fd;

    //1.创建socket
    socket_fd = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(SERV_PORT);

#ifndef Debug_Test
    inet_pton(AF_INET, argv[1], &server_addr.sin_addr);
#else
    inet_pton(AF_INET, "127.0.0.1", &server_addr.sin_addr);
#endif

    socklen_t server_len = sizeof(server_addr);

    //2.发起连接
    int connect_rt = connect(socket_fd, (struct sockaddr *) &server_addr, server_len);
    if (connect_rt < 0) {
        error(1, errno, "connect failed ");
    }

    char send_line[MAXLINE], recv_line[MAXLINE + 1];
    int n;

    fd_set readmask;
    fd_set allreads;

    //d_set（它比较重要所以先介绍一下）是一组文件描述字(fd)的集合，它用一位来表示一个
    //fd（下面会仔细介绍），对于fd_set类型通过下面四个宏来操作：
    //FD_ZERO(fd_set *fdset);将指定的文件描述符集清空，在对文件描述符集合进行设置前，
    //必须对其进行初始化，如果不清空，由于在系统分配内存空间后，通常并不作清空处理，所以结果是不可知的。
    // FD_SET(fd_set *fdset);用于在文件描述符集合中增加一个新的文件描述符。
    // FD_CLR(fd_set *fdset);用于在文件描述符集合中删除一个文件描述符。
    // FD_ISSET(int fd,fd_set *fdset);用于测试指定的文件描述符是否在该集合中。
    //3.初始化描述字集合（后面用到了IO的多路复用）
    FD_ZERO(&allreads);//将你的套节字集合清空
    FD_SET(0, &allreads);//stdin（文件描述符0）
    FD_SET(socket_fd, &allreads);

    //4.使用select多路复用，观测在连接套接字和标准输入输出上的I/O
    // 事件
    for (;;) {
        readmask = allreads;
        int rc = select(socket_fd + 1, &readmask, NULL, NULL, NULL);
        if (rc <= 0)
            error(1, errno, "select failed");
        //当连接套接字上有数据可读，就将数据读入缓冲区
        if (FD_ISSET(socket_fd, &readmask)) {
            n = read(socket_fd, recv_line, MAXLINE);
            //有异常，报错退出
            if (n < 0) {
                error(1, errno, "read error");
            } //读到服务端发来的EOF则正常退出
            else if (n == 0) {
                error(1, 0, "server terminated \n");
            }
            recv_line[n] = 0;
            fputs(recv_line, stdout);
            fputs("\n", stdout);
        }

        //当标准输入有数据可读时，读入并进行判断
        if (FD_ISSET(0, &readmask)) {
            if (fgets(send_line, MAXLINE, stdin) != NULL) {
                if (strncmp(send_line, "shutdown", 8) == 0) {
                    FD_CLR(0, &allreads);//关闭标准输入输出IO事件感知
                    if (shutdown(socket_fd, 1)) {
                        error(1, errno, "shutdown failed");
                    }
                } else if (strncmp(send_line, "close", 5) == 0) {
                    FD_CLR(0, &allreads);//关闭标准输入输出IO事件感知
                    if (close(socket_fd)) {
                        error(1, errno, "close failed");
                    }
                    sleep(6);
                    exit(0);
                } else {
                    int i = strlen(send_line);
                    if (send_line[i - 1] == '\n') {
                        send_line[i - 1] = 0;
                    }

                    printf("now sending %s\n", send_line);
                    size_t rt = write(socket_fd, send_line, strlen(send_line));
                    if (rt < 0) {
                        error(1, errno, "write failed ");
                    }
                    printf("send bytes: %zu \n", rt);
                }

            }
        }

    }

}


