//
// Created by root on 11/3/19.
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
int main(){
    int connfd;
    char buf[1024];

    connfd=tcp_server(SERV_PORT);
    for(;;){
        int n=read(connfd,buf, sizeof(buf));
        if(n<0){
            error(1,errno,"error read");
        }else if(n==0){
            error(1,errno,"client closed");
        }
        sleep(5);
        int nc=send(connfd,buf,n,0);
        if(nc<0){
            error(1,errno,"send failed");
        }
    }
    exit(0);

}