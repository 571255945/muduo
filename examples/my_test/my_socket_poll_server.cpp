//
// Created by root on 11/12/19.
//
//#include"lib/common.h"
#include<iostream>
#include <poll.h>
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

#define INIT_SIZE 128

int tcp_server_listen(u_int32_t port)
{
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
    return fd;
}


int main()
{
    int listen_fd,conn_fd;
    int ready_number;
    ssize_t n;
    char buf[MAXLINE];
    struct sockaddr_in client_addr;

    listen_fd=tcp_server_listen(SERV_PORT);

    //初始化pollfd数组，这个数组的第一个元素是listen_fd,
    //其余的用来记录将要连接的conn_fd
    struct pollfd event_set[INIT_SIZE];
    event_set[0].fd=listen_fd;
    event_set[0].events=POLLRDNORM;//POLLRDNORM普通数据可读

    //用-1表示这个数组位置还没有被占用
    int i;
    for(i=1;i<INIT_SIZE;++i){
        event_set[i].fd=-1;
    }

    for(;;)
    {
        //第三个参数：-1表示阻塞；0：立刻返回；>0表示超时时间
        //当有错误发生时，poll 函数的返回值为 -1；如果在指定的时间到达之前没有任何事件发生，
        //则返回 0，否则就返回检测到的事件个数，也就是“returned events”中非 0 的描述符个数。
        ready_number=poll(event_set,INIT_SIZE,-1);
        if(ready_number<0)
        {
            //perror("poll failed");
            error(1,errno,"poll error");
        }

        if(event_set[0].revents&POLLRDNORM){
            socklen_t client_len= sizeof(client_addr);
            conn_fd=accept(listen_fd,(struct sockaddr*)&client_addr,&client_len);

            //找到一个可以记录该链接套接字的位置
            for (i = 0; i < INIT_SIZE; i++) {
                if(event_set[i].fd<0) {
                    event_set[i].fd = conn_fd;
                    event_set[i].events = POLLRDNORM;
                    break;
                }
            }
            if(i==INIT_SIZE){
                error(1,errno,"can not hold so many clients");
            }
            // 加速优化，因为 poll 返回的一个整数，
            // 说明了这次 I/O 事件描述符的个数，如果处理完监听套接字之后，
            // 就已经完成了这次 I/O 复用所要处理的事情，那么我们就可以跳过
            // 后面的处理，再次进入 poll 调用
            if(--ready_number<=0){
                continue;
            }
        }
        for(i=1;i<INIT_SIZE;i++){
            int socket_fd=event_set[i].fd;
            if(socket_fd<0){
                continue;
            }
            if(event_set[i].revents&(POLLRDNORM|POLLERR)){
                n=read(socket_fd,buf,MAXLINE);
                if(n>0)
                {
                    if(write(socket_fd,buf,n)<0){
                        error(1,errno,"write error");
                    }
                }else if(n==0||errno==ECONNRESET)//客户端关闭（n==0）或连接重置
                {
                    close(socket_fd);
                    event_set[i].fd=-1;
                }else{
                    error(1,errno,"read error");
                }
                if(--ready_number<=0){
                    break;
                }
            }
        }
    }

}
