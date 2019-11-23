//
// Created by root on 11/2/19.
//

//#include"lib/common.h"

#include<iostream>
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
#define    UNIXSTR_PATH   "/var/lib/unixstream1.sock"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096
#define MAXLINE 4096

static int count;
static void sig_int(int sign){
    printf("received %d datagrams\n",count);
    exit(0);
}


size_t readn(int fd, void *buffer, size_t length) {
    size_t count;
    ssize_t nread;
    char *ptr;

    ptr = (char*)buffer;
    count = length;
    while (count > 0) {
        nread = read(fd, ptr, count);

        if (nread < 0) {
            if (errno == EINTR)
                continue;
            else
                return (-1);
        } else if (nread == 0)
            break;                /* EOF */

        count -= nread;
        ptr += nread;
    }
    return (length - count);        /* return >= 0 */
}

size_t read_msg(int fd, char *buffer, size_t length) {
    u_int32_t msg_length;
    u_int32_t msg_type;
    int rc;

    rc = readn(fd, (char *) &msg_length, sizeof(u_int32_t));
    if (rc != sizeof(u_int32_t))
        return rc < 0 ? -1 : 0;
    msg_length = ntohl(msg_length);

    rc = readn(fd, (char *) &msg_type, sizeof(msg_type));
    if (rc != sizeof(u_int32_t))
        return rc < 0 ? -1 : 0;

    if (msg_length > length) {
        return -1;
    }

    rc = readn(fd, buffer, msg_length);
    if (rc != msg_length)
        return rc < 0 ? -1 : 0;
    return rc;
}
#if 1
int main()
{
    //1.创建
    int listen_fd=socket(AF_INET,SOCK_STREAM,0);

    //2.初始化
    struct sockaddr_in server_addr;
    bzero(&server_addr,sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_port=htons(SERV_PORT);//一开始htons错写成了htonl导致客户端一直连接不上
    server_addr.sin_addr.s_addr=htonl(INADDR_ANY);

    //3.设置地址可重用
    int on =1;
    setsockopt(listen_fd,SOL_SOCKET,SO_REUSEADDR,&on, sizeof(on));

    //4.bind
    int rt1=bind(listen_fd,(struct sockaddr *)&server_addr, sizeof(server_addr));
    if(rt1<0){
        error(1,errno,"bind failed");
    }
    //5.listen
    int rt2=listen(listen_fd,1024);
    if(rt2<0){
        error(1,errno,"listen failed");
    }

    signal(SIGPIPE,SIG_IGN);

    int connfd;
    struct sockaddr_in client_addr;
    socklen_t client_len= sizeof(client_addr);

    //6.accept
    if((connfd=accept(listen_fd, (struct sockaddr*)&client_addr,&client_len))<0){
        error(1,errno,"bind error");
    }

    char buf[128];
    count=0;

    while(1){
        int n=read_msg(connfd,buf,sizeof(buf)-1);
        if(n<0){
            error(1,errno,"error read message");
        }
        else if(n==0){
            error(1,0,"client closed");
        }
        buf[n]=0;//设置字符串结束符
        printf("reveived %d bytes: %s\n",n,buf);
        count++;
    }
    exit(0);

}
#endif

#if 0
int main(int argc, char **argv) {
    int listenfd;
    listenfd = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server_addr.sin_port = htons(SERV_PORT);

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

    signal(SIGPIPE, SIG_IGN);

    int connfd;
    struct sockaddr_in client_addr;
    socklen_t client_len = sizeof(client_addr);

    if ((connfd = accept(listenfd, (struct sockaddr *) &client_addr, &client_len)) < 0) {
        error(1, errno, "bind failed ");
    }

    char buf[128];
    count = 0;

    while (1) {
        int n = read_msg(connfd, buf, sizeof(buf));
        if (n < 0) {
            error(1, errno, "error read message");
        } else if (n == 0) {
            error(1, 0, "client closed \n");
        }
        buf[n] = 0;
        printf("received %d bytes: %s\n", n, buf);
        count++;
    }

    exit(0);

}
#endif