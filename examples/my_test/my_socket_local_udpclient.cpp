//
// Created by root on 10/3/19.
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
//#define    UNIXSTR_PATH  "/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/test.txt"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096

int main(int argc, char **argv) {
//    if (argc != 2) {
//        error(1, 0, "usage: unixdataclient <local_path>");
//    }

    int sockfd;
    struct sockaddr_un client_addr, server_addr;

    sockfd = socket(AF_LOCAL, SOCK_DGRAM, 0);
//    sockfd = socket(AF_LOCAL, SOCK_STREAM, 0);
    if (sockfd < 0) {
        error(1, errno, "create socket failed");
    }

    bzero(&client_addr, sizeof(client_addr));        /* bind an address for us */
    client_addr.sun_family = AF_LOCAL;

    //tmpnam 产生一个唯一的文件名
    strcpy(client_addr.sun_path, tmpnam(NULL));
//    strcpy(client_addr.sun_path, mkdtemp(NULL));

//    比网络UDP多了一次绑定
//    将本地套接字 bind 到本地一个路径上，然而 UDP 客户端程序是不需要这么做的。本地数据报套接字这
//    么做的原因是，它需要指定一个本地路径，以便在服务器端回包时，可以正确地找到地址；而在 UDP
//    客户端程序里，数据是可以通过 UDP 包的本地地址和端口来匹配的。
    if (bind(sockfd, (struct sockaddr *) &client_addr, sizeof(client_addr)) < 0) {
        error(1, errno, "bind failed");
    }

    bzero(&server_addr, sizeof(server_addr));
    server_addr.sun_family = AF_LOCAL;
    strcpy(server_addr.sun_path, UNIXSTR_PATH/*argv[1]*/);

    char send_line[MAXLINE];
    bzero(send_line, MAXLINE);
    char recv_line[MAXLINE];

    while (fgets(send_line, MAXLINE, stdin) != NULL) {
        int i = strlen(send_line);
        if (send_line[i - 1] == '\n') {
            send_line[i - 1] = 0;
        }
        size_t nbytes = strlen(send_line);
        printf("now sending %s \n", send_line);

        if (sendto(sockfd, send_line, nbytes, 0, (struct sockaddr *) &server_addr, sizeof(server_addr)) != nbytes)
            error(1, errno, "sendto error");

        int n = recvfrom(sockfd, recv_line, MAXLINE, 0, NULL, NULL);
        recv_line[n] = 0;

        fputs(recv_line, stdout);
        fputs("\n", stdout);
    }

    exit(0);
}