//
// Created by root on 10/2/19.
//

#include<iostream>
#include<sys/socket.h>
//#include "lib/common.h"
#include <netinet/in.h>
#include<signal.h>
#include<string.h>

#define    MAXLINE        4096

static int count;

static void recvfrom_int(int signo){
    printf("\n received %d datagrams\n",count);
    exit(0);
}

int main(){
    int socket_fd;

    //1.创建socket
    socket_fd=socket(AF_INET,SOCK_DGRAM,0);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));

    server_addr.sin_family=AF_INET;
    server_addr.sin_addr.s_addr=htonl(INADDR_ANY);
    server_addr.sin_port=htons(10000);

    //绑定socket
    bind(socket_fd,(struct sockaddr *)&server_addr, sizeof(server_addr));

    socklen_t client_len;
    char message[MAXLINE];
    count = 0;

    //发送收到ctrl+C时发出信号，结束程序
    signal(SIGINT,recvfrom_int);

    struct sockaddr_in client_addr;
    client_len = sizeof(client_addr);
    for (;;) {

        //接收数据(阻塞)
        int n=recvfrom(socket_fd,message,MAXLINE,0,
                (struct sockaddr*)&client_addr,&client_len);
        message[n]=0;
        printf("received %d bytes:%s\n",n,message);

        char send_line[MAXLINE];
        sprintf(send_line,"Hi,%s",message);

        //发送数据
        sendto(socket_fd,send_line,strlen(send_line),0,
               (struct sockaddr *)&client_addr,client_len);

        count++;

    }


}