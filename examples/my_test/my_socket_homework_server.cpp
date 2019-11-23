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
static int count;
static void sig_int(int signo){
    printf("\nreceived %d datagrams\n",count);
    exit(0);
}
int tcp_server(u_int32_t port){
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

    //6.accept(wait connect)
    struct sockaddr_in client_addr;
//    bzero(&client_addr, sizeof(client_addr));
    socklen_t client_len=sizeof(client_addr);
    int connfd = accept(fd,(struct sockaddr*)&server_addr,&client_len);
    if(connfd<0){
        error(1,errno,"accept failed");
    }

    return connfd;
}
char *run_cmd(std::string cmd){
    char* data=(char*)malloc(16384);
    bzero(data, sizeof(data));
    FILE *fdp;
    const int max_buffer=256;
    char buffer[max_buffer];
    fdp=popen(cmd.c_str(),"r");
    char *data_index=data;
    if(fdp){
        //feof是C语言标准库函数，其原型在stdio.h中，其功能是检测流上的文件结束符，如果文件结束，则返回非0值，没有结束否则返回0
        while(!feof(fdp)){
            if(fgets(buffer,max_buffer,fdp)!=NULL){
                int len=strlen(buffer);
                memcpy(data_index,buffer,len);
                data_index+=len;
            }
        }
        pclose(fdp);
    }
    return data;
}

//一次只能服务一个客户端，是因为只绑定了一个端口吗？
int main(int argc,char* argv[]){
    //1.create
    int fd=socket(AF_INET,SOCK_STREAM,0);

    //2.init
    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_port=htons(SERV_PORT);
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

    //6.accept(wait connect)
    struct sockaddr_in client_addr;
//    bzero(&client_addr, sizeof(client_addr));
    socklen_t client_len=sizeof(client_addr);


    char buf[256]={0};
    int count=0;
//    int connfd = -1;

    while(1){
        //这里仅将accept放在while循环中 ，如果这里是tcp_server()返回connfd的话，client退出server也就退出了,
        //因为client退出后，循环再次走到tcp_server(),而tcp_server中重新去建立连接，这时之前的连接还在使用，所以就报错
        //address already in use.
        int connfd = accept(fd,(struct sockaddr*)&server_addr,&client_len);
        //int connfd=tcp_server(SERV_PORT);
        if(connfd<0){
            error(1,errno,"accept failed");
        }
        if(connfd<0){
            error(1,errno,"bind failed");
        }
        while(1){
            bzero(buf, sizeof(buf));
            int n=read(connfd,buf, sizeof(buf));
            if(n<0){
                error(1,errno,"error read message");
            }else if(n==0){
                printf("client closed\n");
                close(connfd);
                break;
            }
            count++;
            buf[n]=0;
            if(strncmp(buf,"ls",n)==0){
                char *result=run_cmd("ls");
                if(send(connfd,result,strlen(result),0)<0){
                    return 1;
                }
                free(result);
            }else if(strncmp(buf,"pwd",n)==0){
                char buf[256];
                char *result=getcwd(buf,256);
                if(send(connfd,result,strlen(result),0)<0){
                    return 1;
                }
            }
            else if(strncmp(buf,"cd",2)==0){
                char target[256]={0};
                bzero(target, sizeof(target));
                memcpy(target,buf+3,strlen(buf)-3);
                if(chdir(target)==-1){
                    printf("change dir failed,%s\n",target);
                }
            }else{
                std::string error="error:unkown input type : "+std::string(buf);
                if(send(connfd,error.c_str(),strlen(error.c_str()),0)<0){
                    return 1;
                }
            }
        }
    }

    exit(0);
//    return 0;
}