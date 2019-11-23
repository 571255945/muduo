//
// Created by root on 10/2/19.
//

#include<iostream>
#include <sys/socket.h>
#include <netinet/in.h>

#include <string.h>
#include <arpa/inet.h>
#include <errno.h>
#include <error.h>
#include <unistd.h>

using namespace std;

//读取数据
void read_data(int sockfd){
    ssize_t n;
    char buf[1024];

    int time=0;
    for(;;){
        fprintf(stdout,"block in read\n");

        n=read(sockfd,buf,1024);
        if(n==0){
            fprintf(stdout,"read return 0");
            return;
        }

        time++;
        fprintf(stdout,"1k read for %d \n",time);
        usleep(1000*1000);//1s
    }
}

int main()
{
    int listenfd,connfd;
    socklen_t clilen;
    struct sockaddr_in cliaddr,servaddr;

    //1.创建socket ; SOCK_STREAM 字节流对应TCP
    listenfd = socket(AF_INET,SOCK_STREAM,0);

    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family=AF_INET;
    servaddr.sin_addr.s_addr=htonl(INADDR_ANY);
    servaddr.sin_port=htons(43211);

    //2.绑定IP和port
    bind(listenfd,(struct sockaddr*)&servaddr, sizeof(servaddr));

    //3.启动监听 监听的backlog为1024;
    listen(listenfd,1024);

    //4.循环处理用户请求
    for(;;){
        clilen = sizeof(cliaddr);
        //程序阻塞在了accept这儿，listenfd和connfd的值不一样
        connfd=accept(listenfd,(struct sockaddr*)&cliaddr,&clilen);

        //读取数据
        read_data(connfd);
        //关闭套接字（socket）,注意不是监听套接字
        close(connfd);
    }

}

