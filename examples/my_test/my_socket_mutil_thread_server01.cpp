//
// Created by root on 11/19/19.
//
//#include "lib/common.h"
#include <pthread.h>
#include <iostream>
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
#include <wait.h>

#define    SERV_PORT      43211
#define    MAXLINE        4096
#define    UNIXSTR_PATH   "/var/lib/unixstream1.sock"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096
#define MAXLINE 4096
void loop_echo(int fd) {
    char outbuf[MAXLINE + 1];
    size_t outbuf_used = 0;
    ssize_t result;
    while (1) {
        char ch;
        result = recv(fd, &ch, 1, 0);

        //断开连接或者出错
        if (result == 0) {
            printf("client closed \n");
            close(fd);//关闭连接
            break;
        } else if (result == -1) {
            error(1, errno, "read error");
            break;
        }

        if (outbuf_used < sizeof(outbuf)) {
            outbuf[outbuf_used++] = ch;
        }

        if (ch == '\n') {
            send(fd, outbuf, outbuf_used, 0);
            outbuf_used = 0;
            continue;
        }
    }
}

void* thread_run(void *arg) {
    printf("thread id = %ld\n",pthread_self());
    pthread_detach(pthread_self());
    int fd = *(int*)arg;
    loop_echo(fd);
}
int tcp_server_listen(u_int32_t port)
{
    //1.create
    int fd=socket(AF_INET,SOCK_STREAM,0);

    //2.init
    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_port=htons(port);
    server_addr.sin_family=AF_INET;
    server_addr.sin_addr.s_addr=INADDR_ANY;

    //3.set reuse(SOL_SOCKET 套接字级别)
    int on=1;
    setsockopt(fd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on));

    //4.bind
    socklen_t len= sizeof(server_addr);
    int rt1=bind(fd,(struct sockaddr*)&server_addr,len);
    if(rt1<0){
        error(1,errno,"bind failed");
    }

    //5.listen
    int rt2=listen(fd,1024);
    if(rt2<0){
        error(1,errno,"listen failed");
    }
    return fd;
}
int main(int c, char **v) {
    int listener_fd = tcp_server_listen(SERV_PORT);
    pthread_t tid;


    while(1){
        struct sockaddr_storage ss;
        socklen_t len=sizeof(ss);
        int fd=accept(listener_fd,(struct sockaddr *)&ss,&len);
        if(fd<0){
            error(1,errno,"accept failed");
        }else{
            pthread_create(&tid,NULL,&thread_run,(void*)&fd);
        }
    }

//    return 0;
}
