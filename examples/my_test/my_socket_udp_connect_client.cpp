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

/*
 * 运行后的结果如下，可见在UDP中加入connect后如果服务不可达会报错，但是如果UDP不使用connect方法就不会报错了
123
now sending 1230
send bytes 4
/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/my_socket_udp_connect_client0: recvfrom failed: Connection refused
*/

int main(int argc,char **argv){

    //1.创建socket
    int socket_fd;
    socket_fd = socket(AF_INET,SOCK_DGRAM,0);

    //2.绑定初始化server
    struct sockaddr_in server_addr;
    bzero(&server_addr,sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_port=htons(SERV_PORT);

    //int inet_pton(int af, const char *src, void *dst);将“点分十进制” －> “二进制整数”
    //这个函数转换字符串到网络地址，第一个参数af是地址簇，第二个参数*src是来源地址，
    // 第三个参数* dst接收转换后的数据。
    inet_pton(AF_INET,"127.0.0.1",&server_addr.sin_addr);

    //3.链接socket
    socklen_t server_len = sizeof(server_addr);
    if(connect(socket_fd,(struct sockaddr *)&server_addr,server_len))//如果注释掉，服务端不可达时是不会报错的
    {
        error(1,errno,"connect failed");
    }

    //
    struct sockaddr *reply_addr;
    reply_addr= (struct sockaddr*)malloc(server_len);
    char send_line[MAXLINE],recv_line[MAXLINE+1];
    socklen_t len;
    int n;

    while(fgets(send_line,MAXLINE,stdin)!= nullptr){
        int i=strlen(send_line);
        if(send_line[i-1]=='\n'){
            send_line[i-1]='\0';
        }

        //开始发送
        printf("now sending %s\n",send_line);
        size_t rt=sendto(socket_fd,send_line,strlen(send_line),/*MSG_DONTWAIT*/0,(struct sockaddr *)&server_addr,server_len);
        if(rt<0){
            //error第一个参数传给了exit,即exit(1)，1表示非正常退出，0表示正常退出
            error(1,errno,"send fail");
        }
        printf("send bytes %zu \n",rt);//返回值表示发送的字节数

        len=0;
        recv_line[0]=0;//初始化第一个字符,为什么仅初始化第一元素呢？
        n=recvfrom(socket_fd,recv_line,MAXLINE,/*MSG_DONTWAIT*/0,reply_addr,&len);
        if(n<0){
            error(1,errno,"recvfrom failed");
        }
        recv_line[n]=0;
        fputs(recv_line,stdout);
        fputs("\n",stdout);

    }
    exit(0);


}