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

static void recvfrom_int(int signo){
    printf("\nreceived %d datagrams\n",count);
    exit(0);
}

int main()
{
    //1.创建
    int socket_fd;
    socket_fd=socket(AF_INET,SOCK_DGRAM,0);

    //2.初始化
    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_port=htons(SERV_PORT);
    server_addr.sin_addr.s_addr=htonl(INADDR_ANY);

    //3.绑定
    bind(socket_fd,(struct sockaddr*)&server_addr, sizeof(server_addr));

    socklen_t client_len;
    char message[MAXLINE];
    message[0]=0;//也是仅初始化了第一个字符，为什么呢?
    count=0;

    //注册一个信号处理函数，以响应 Ctrl+C 信号量操作
    signal(SIGINT,recvfrom_int);

    struct sockaddr_in client_addr;
    client_len= sizeof(client_addr);

    //flag=0时阻塞（默认情况）；将flag设为MSG_DONTWAIT,将无法正常工作
    int n=recvfrom(socket_fd,message,MAXLINE,0,
                   (struct sockaddr *)&client_addr,&client_len);
    if(n<0){
        error(1,errno,"recv error");
    }
    message[n]=0;
    printf("received %d bytes:%s\n",n,message);

    //1.前面recvfrom是为了获取在这里用于connnect的client信息，所以前面的recvfrom应该是阻塞的.
    //2.服务端如果connect了，那么就只能服务于一个客户端，其他的客户端连接后给它发消息会收到connection refused的报错
    if(connect(socket_fd,(struct sockaddr *)&client_addr,client_len)){
        error(1,errno,"connect failed");
    }
    while(strncmp(message,"goodbye",7)!=0){
        char send_line[MAXLINE]={0};//记得初始话，否则发送的结果最后可能会不正确（没有字符串结束符）
        //send_line[0]=0;
        sprintf(send_line,"Hi,%s",message);
        //int sn=strlen(send_line);
        size_t rt=send(socket_fd,send_line,strlen(send_line),0);
        if(rt<0){
            error(1,errno,"send failed");
        }
        printf("send byte:%zu\n",rt);

        size_t rc=recv(socket_fd,message,MAXLINE,0);
        if(rc<0){
            error(1,errno,"recv failed");
        }
        count++;
    }
    exit(0);
}