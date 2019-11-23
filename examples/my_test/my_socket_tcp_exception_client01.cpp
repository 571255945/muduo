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
    std::string ip="127.0.0.1";
    int socket_fd=tcp_client(ip,SERV_PORT);
    if(socket_fd<0){
        exit(1);
    }

    char buf[129];
    int len=-1;
    int rc=-1;
    while(fgets(buf, sizeof(buf),stdin)!= nullptr)
    {
        len=strlen(buf);
        rc=send(socket_fd,buf,len,0);
        if(rc<0){
            error(1,errno,"send failed");
        }
        sleep(1);
        rc=read(socket_fd,buf, sizeof(buf));
        if(rc<0){
            error(1,errno,"read failed");
        }
        else if(rc==0){
            error(1,0,"peer connection closed");
        }
        else{
            fputs(buf,stdout);
        }
    }
    exit(0);

    return 0;
}