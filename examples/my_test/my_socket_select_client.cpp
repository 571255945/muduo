//
// Created by root on 11/9/19.
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

int tcp_client(const std::string &ip,int16_t port){
    //1.创建
    int socket_fd=socket(AF_INET,SOCK_STREAM,0);

    //2.初始化
    struct sockaddr_in clien_addr;
    bzero(&clien_addr,sizeof(clien_addr));
    clien_addr.sin_port=htons(port);
    clien_addr.sin_family=AF_INET;
    inet_pton(AF_INET,ip.c_str(), &clien_addr.sin_addr);

    socklen_t len= sizeof(clien_addr);

    //3.连接
    int rc=connect(socket_fd,(struct sockaddr*)&clien_addr,len);
    if(rc<0){
        error(1,errno,"connect error");
        return -1;
    }
    return socket_fd;

}

int main()
{
    int socket_fd=tcp_client("127.0.0.1",SERV_PORT);

    char recv_line[MAXLINE]={0},send_line[MAXLINE]={0};
    int n;

    fd_set readmask;
    fd_set allreads;
    FD_ZERO(&allreads);//初始化
    FD_SET(0,&allreads);//设置标准IO感知
    FD_SET(socket_fd,&allreads);//设置套接字感知

    for(;;){
        //每次检测重新设置套接字描述符
        readmask=allreads;
        int rc=select(socket_fd+1,&readmask,NULL,
                NULL,NULL);
        if(rc<=0){
            error(1,errno,"select failed");
        }
        if(FD_ISSET(socket_fd,&readmask)){
            n=read(socket_fd,recv_line,sizeof(recv_line));
            if(n<0){
                error(1,errno,"read failed");
            }else if(n==0){
                error(1,0,"server closed");
            }
            recv_line[n]=0;
            fputs(recv_line,stdout);
            fputs("\n",stdout);
        }
        if(FD_ISSET(STDIN_FILENO,&readmask)){
            if(fgets(send_line,MAXLINE,stdin)!=NULL){
                int i=strlen(send_line);
                if(send_line[i-1]=='\n'){
                    send_line[i-1]=0;
                }
                printf("now sending %s\n",send_line);

                //不能用size_t 因为size_t是unsigned int不会小于0
                ssize_t rt=write(socket_fd,send_line,strlen(send_line));
                if(rt<0){
                    error(1,errno,"write failed");
                }
                printf("send bytes:%zu\n",rt);

            }
        }
    }
}
