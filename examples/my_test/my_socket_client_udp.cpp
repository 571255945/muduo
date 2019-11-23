//
// Created by root on 10/2/19.
//

#include<iostream>
#include<sys/socket.h>
//#include "lib/common.h"
#include <netinet/in.h>
#include<signal.h>
#include<string.h>
#include <arpa/inet.h>
#include <error.h>


# define    NDG         2000    /* datagrams to send */
# define    DGLEN       1400    /* length of each datagram */
# define    MAXLINE     4096

int main()
{
    int socket_fd;
    //1.创建socket
    socket_fd=socket(AF_INET,SOCK_DGRAM,0);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_port=htons(10000);

    //ip地址转换为十进制
    inet_pton(AF_INET,"127.0.0.1",&server_addr.sin_addr);

    socklen_t  server_len= sizeof(server_addr);

    struct sockaddr *reply_addr;
    reply_addr=(struct sockaddr*)malloc(server_len);

    char send_line[MAXLINE],recv_line[MAXLINE+1];
    socklen_t len;

    //
    int n;
    while(fgets(send_line,MAXLINE,stdin)!=NULL){

        int i=strlen(send_line);
        //将接收到的回车符变为字符串结束符
        if(send_line[i-1]=='\n'){
            send_line[i-1]=0;
        }

        //2.发送数据 (strlen(send_line)求字符串长度时最后要有字符串结束符‘\0’，
        // send_line没有初始化，但是fgets会给它加上结束符)
        printf("now sending %s\n",send_line);
        size_t  rt=sendto(socket_fd,send_line,strlen(send_line),
                0,(struct sockaddr *)&server_addr,server_len);
        if(rt<0){
            error(1,errno,"send failed");
        }
        //这个是GCC的扩展用法，
        //z A following integer conversion corresponds to a size_t or ssize_t argument.
        printf("send bytes:%zu \n",rt);

        len=0;

        //3.接收数据
        n=recvfrom(socket_fd,recv_line,MAXLINE,0,reply_addr,&len);

        if(n<0){
            error(1,errno,"recvfrom failed");
        }
        recv_line[n]=0;
        fputs(recv_line,stdout);
        fputs("\n",stdout);
    }

    exit(0);

}