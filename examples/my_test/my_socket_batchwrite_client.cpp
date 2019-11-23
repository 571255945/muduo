//
// Created by root on 10/29/19.
//

//#include "lib/common.h"
#include <sys/uio.h>
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
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096
#include "message_objecte.h"

#define    MAXLINE     4096
#define    KEEP_ALIVE_TIME  10
#define    KEEP_ALIVE_INTERVAL  3
#define    KEEP_ALIVE_PROBETIMES  3

int main()
{
    int socket_fd;
    socket_fd=socket(AF_INET,SOCK_STREAM,0);

    struct sockaddr_in server_addr;
    bzero(&server_addr,sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_port=htons(SERV_PORT);
    inet_pton(AF_INET,"127.0.0.1",&server_addr.sin_addr);

    socklen_t  server_len= sizeof(server_addr);
    int connect_rt=connect(socket_fd,
            (struct sockaddr *)&server_addr,
                    server_len);
    if(connect_rt<0){
        error(1,errno,"connect failed");
    }

    char buf[128];
    struct iovec iov[2];
    char *send_one= const_cast<char *>(std::string("hello,").c_str());
    iov[0].iov_base=send_one;
    iov[0].iov_len=strlen(send_one);
    iov[1].iov_base=buf;
    while (fgets(buf,sizeof(buf),stdin)!=NULL){
        iov[1].iov_len=strlen(buf);
        int n= htonl(iov[1].iov_len);
        if(writev(socket_fd,iov,2)<0){//最后一个参数2是iov数组的长度
            error(1,errno,"writev failure");
        }
        exit(0);
    }
}