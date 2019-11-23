//
// Created by root on 11/2/19.
//

//测试服务重启失败（地址被占用）
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
static void sig_int(int signo){
    printf("\nreceived %d datagrams\n",count);
    exit(0);
}

int main()
{
    //1创建socket
    int listenfd=socket(AF_INET,SOCK_STREAM,0);
    //2.初始化
    struct sockaddr_in server_addr;
    bzero(&server_addr,sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_port=htons(SERV_PORT);
    server_addr.sin_addr.s_addr=htonl(INADDR_ANY);

    //2.5补充优化，避免server重启时的address in use的问题
    int on = 1;
    setsockopt(listenfd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on));
    //3.bind
    int rt1=bind(listenfd,(struct sockaddr *)&server_addr, sizeof(server_addr));
    if(rt1<0){
        error(1,errno,"bind failed");
    }

    //4.listen
    int rt2=listen(listenfd,1024);
    if(rt2<0){
        error(1,errno,"listen failed");
    }

    //注册退出信号
    signal(SIGPIPE,sig_int);

    int connfd;
    struct sockaddr_in client_addr;
    socklen_t  client_len= sizeof(client_addr);

    //5.等待连接
    if((connfd=accept(listenfd,(struct sockaddr *)&client_addr,&client_len))<0){
        error(1,errno,"bind failed2");
    }
    char message[MAXLINE];
    count=0;
    for(;;){
        int n=read(connfd,message,MAXLINE);
        if(n<0){
            error(1,errno,"error read");
        }
        else if(n==0){
            error(1,0,"client closed");
        }
        message[n]=0;
        printf("received %d bytes:%s\n",n,message);
        count++;
    }
}