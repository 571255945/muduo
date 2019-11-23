//
// Created by root on 10/2/19.
//

#include <sys/socket.h>
#include <netinet/in.h>
#include <iostream>
#include <string.h>
#include <arpa/inet.h>
#include <errno.h>
#include <error.h>
using namespace std;
#define  MSG_SIZE (1024000*4+10240)
void send_data(int sockfd)
{
    char *query;
    query = (char *)malloc(MSG_SIZE+1);
    for(int i=0;i<MSG_SIZE;i++){
        query[i]='a';
    }
    query[MSG_SIZE]='\0';

    const char *cp;
    cp=query;
    size_t remaining = strlen(query);

    while(remaining){
        //写入缓冲区，阻塞式调用，奇怪的是，size为(1024000*4+10240)时能很快返回，
        // size为（1024000*5)时就会阻塞半天
        int n_written = send(sockfd,cp,remaining,0);
        fprintf(stdout,"send into buffer %ld \n",n_written);
        if(n_written<=0){
            error(1,errno,"send failed");
            return;
        }
        remaining -= n_written;
        cp+=n_written;
    }
    return;
}
int main()
{
    int sockfd;
    struct sockaddr_in servaddr;

    sockfd = socket(AF_INET,SOCK_STREAM,0);

    //将字符串的前n个字节置为0
    bzero(&servaddr, sizeof(servaddr));

    servaddr.sin_family=AF_INET;
    servaddr.sin_port=htons(9000);
    inet_pton(AF_INET,"127.0.0.1",&servaddr.sin_addr);
    int connect_rt=connect(sockfd,
            (struct sockaddr*)&servaddr,
                    sizeof(servaddr));
    if(connect_rt<0){
//        fprintf(stdout,"1k read for %d \n",time);
        //如果status 不为0 the error function will be call exit(3)
        // 在出错后整个程序 就会被 error 函数给退出。如果satus 为0 则不会退出主程序。
        error(1, errno,"connect failed errormsg");
    }

    send_data(sockfd);
    exit(0);
}