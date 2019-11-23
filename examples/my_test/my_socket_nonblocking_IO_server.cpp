//
// Created by root on 11/13/19.
// 这个demo不是太懂
//
//#include"lib/common.h"


#include<iostream>
#include <fcntl.h>
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
//#define    UNIXSTR_PATH   "/var/lib/unixstream1.sock"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096
#define MAXLINE 4096

#define MAX_LINE 1024
#define FD_INIT_SIZE 128

//这个函数什么意思？
char rot13_char(char c) {
    if ((c >= 'a' && c <= 'm') || (c >= 'A' && c <= 'M'))
        return c + 13;
    else if ((c >= 'n' && c <= 'z') || (c >= 'N' && c <= 'Z'))
        return c - 13;
    else
        return c;
}

//数据缓冲区
struct Buffer {
    int connect_fd;  //连接字
    char buffer[MAX_LINE];  //实际缓冲
    size_t writeIndex;      //缓冲写入位置
    size_t readIndex;       //缓冲读取位置
    int readable;           //是否可以读
};


//分配一个Buffer对象，初始化writeIdnex和readIndex等
struct Buffer *alloc_Buffer() {
    struct Buffer *buffer = (Buffer*)malloc(sizeof(struct Buffer));
    if (!buffer)
        return NULL;
    buffer->connect_fd = 0;
    buffer->writeIndex = buffer->readIndex = buffer->readable = 0;
    return buffer;
}

//释放Buffer对象
void free_Buffer(struct Buffer *buffer) {
    free(buffer);
}

//这里从fd套接字读取数据，数据先读取到本地buf数组中，
// 再逐个拷贝到buffer对象缓冲中
int onSocketRead(int fd, struct Buffer *buffer) {
    char buf[1024];
    int i;
    ssize_t result;
    while (1) {
        result = recv(fd, buf, sizeof(buf), 0);
        if (result <= 0)
            break;

        //按char对每个字节进行拷贝，每个字节都会先调用rot13_char来完成编码，之后拷贝到buffer对象的缓冲中，
        //其中writeIndex标志了缓冲中写的位置
        for (i = 0; i < result; ++i) {
            if (buffer->writeIndex < sizeof(buffer->buffer))
                buffer->buffer[buffer->writeIndex++] = rot13_char(buf[i]);
            //如果读取了回车符，则认为client端发送结束，此时可以把编码后的数据回送给客户端
            if (buf[i] == '\n') {
                buffer->readable = 1;  //缓冲区可以读
            }
        }
    }

    if (result == 0) {//关闭client result等于0？
        return 1;
    } else if (result < 0) {
        if (errno == EAGAIN)
            return 0;
        return -1;
    }

    return 0;
}

//从buffer对象的readIndex开始读，一直读到writeIndex的位置，这段区间是有效数据
int onSocketWrite(int fd, struct Buffer *buffer) {
    while (buffer->readIndex < buffer->writeIndex) {
        ssize_t result = send(fd, buffer->buffer + buffer->readIndex, buffer->writeIndex - buffer->readIndex, 0);
        if (result < 0) {
            if (errno == EAGAIN)
                return 0;
            return -1;
        }

        buffer->readIndex += result;
    }

    //readindex已经追上writeIndex，说明有效发送区间已经全部读完，
    // 将readIndex和writeIndex设置为0，复用这段缓冲
    if (buffer->readIndex == buffer->writeIndex){
        buffer->readIndex = buffer->writeIndex = 0;
    }

    //缓冲数据已经全部读完，不需要再读
    buffer->readable = 0;

    return 0;
}


int tcp_nonblocking_server_listen(int port) {
    int listenfd;
    listenfd = socket(AF_INET, SOCK_STREAM, 0);

    //调用 fcntl 将监听套接字设置为非阻塞
    fcntl(listenfd, F_SETFL, O_NONBLOCK);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server_addr.sin_port = htons(port);

    int on = 1;
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

    int rt1 = bind(listenfd, (struct sockaddr *) &server_addr, sizeof(server_addr));
    if (rt1 < 0) {
        error(1, errno, "bind failed ");
    }

    int rt2 = listen(listenfd, LISTENQ);
    if (rt2 < 0) {
        error(1, errno, "listen failed ");
    }

    signal(SIGPIPE, SIG_IGN);//SIG_IGN :Ignore signal.

    return listenfd;
}

int main(int argc, char **argv) {
    int listen_fd;
    int i, maxfd;

    struct Buffer *buffer[FD_INIT_SIZE];
    for (i = 0; i < FD_INIT_SIZE; ++i) {
        buffer[i] = alloc_Buffer();
    }

    listen_fd = tcp_nonblocking_server_listen(SERV_PORT);

    fd_set readset, writeset, exset;
    FD_ZERO(&readset);
    FD_ZERO(&writeset);
    FD_ZERO(&exset);

    while (1) {
        maxfd = listen_fd;

        FD_ZERO(&readset);
        FD_ZERO(&writeset);
        FD_ZERO(&exset);

        // listener加入readset
        FD_SET(listen_fd, &readset);

        for (i = 0; i < FD_INIT_SIZE; ++i) {
            //如果连接套接字有效（即有效客户端）
            if (buffer[i]->connect_fd > 0) {
                //更新最大fd
                if (buffer[i]->connect_fd > maxfd)
                {
                    maxfd = buffer[i]->connect_fd;
                }
                //设置套接字可读
                FD_SET(buffer[i]->connect_fd, &readset);
                //如果套接字可读，那么注册监听套接字的可写事件
                if (buffer[i]->readable) {
                    FD_SET(buffer[i]->connect_fd, &writeset);
                }
            }
        }

        //select 进行 I/O 事件分发处理
        //最后一个参数：
        // NULL表示没有事件发生一直等待下去；
        // 非零值表示超时时间
        if (select(maxfd + 1, &readset, &writeset, &exset, NULL) < 0) {
            error(1, errno, "select error");
        }

        //检测到可读事件
        if (FD_ISSET(listen_fd, &readset)) {
            printf("listening socket readable\n");
            sleep(5);
            struct sockaddr_storage ss;
            socklen_t slen = sizeof(ss);

            //处理新的连接套接字，注意这里也把连接套接字设置为非阻塞的。
            int fd = accept(listen_fd, (struct sockaddr *) &ss, &slen);
            if (fd < 0) {
                error(1, errno, "accept failed");
            } else if (fd > FD_INIT_SIZE) {
                error(1, 0, "too many connections");
                close(fd);
            } else {
                //调用 fcntl 将监听套接字设置为非阻塞
                fcntl(fd, F_SETFL, O_NONBLOCK);
                //每个client连进来fd是依次增大的
                if (buffer[fd]->connect_fd == 0) {
                    buffer[fd]->connect_fd = fd;
                } else {
                    error(1, 0, "too many connections");
                }
            }
        }

        for (i = 0; i < maxfd + 1; ++i) {
            int r = 0;
            if (i == listen_fd)
                continue;

            if (FD_ISSET(i, &readset)) {
                r = onSocketRead(i, buffer[i]);
            }
            if (r == 0 && FD_ISSET(i, &writeset)) {
                r = onSocketWrite(i, buffer[i]);
            }
            if (r) {//关闭客户端onSocketRead返回1
                buffer[i]->connect_fd = 0;
                close(i);
            }
        }
    }
}


/*int main()
{
    int listen_fd;
    int i,maxfd;
    struct Buffer *buffer[FD_INIT_SIZE];
    for (i = 0; i < FD_INIT_SIZE; ++i) {
        buffer[i] = alloc_Buffer();
    }

    listen_fd=tcp_nonblocking_server_listen(SERV_PORT);

    fd_set readset,writeset,exset;
    FD_ZERO(&readset);
    FD_ZERO(&writeset);
    FD_ZERO(&exset);

    while(1){
        maxfd=listen_fd;
        FD_ZERO(&readset);
        FD_ZERO(&writeset);
        FD_ZERO(&exset);

        FD_SET(listen_fd,&readset);

        for(i=0;i<FD_INIT_SIZE;++i)
        {
            if(buffer[i]->connect_fd>0){
                if(buffer[i]->connect_fd>maxfd){
                    maxfd=buffer[i]->connect_fd;
                }
                FD_SET(buffer[i]->connect_fd,&readset);
                if(buffer[i]->readable){
                    FD_SET(buffer[i]->connect_fd,&writeset);
                }
            }
        }

        if(select(maxfd+1,&readset,&writeset,&exset,NULL)<0){
            error(1,errno,"select error");
        }

        if(FD_ISSET(listen_fd,&readset)){
            printf("listening socket readable\n");
            sleep(5);
            struct sockaddr_in ss;
            socklen_t slen=sizeof(ss);
            int fd=accept(listen_fd,(struct sockaddr*)&ss,&slen);

            if(fd<0){
                error(1,errno,"accept failed");
            } else if(fd>FD_INIT_SIZE){
                error(1,0,"too many connections");
                close(fd);
            }else{
                //调用 fcntl 将监听套接字设置为非阻塞
                fcntl(fd, F_SETFL, O_NONBLOCK);
                if(buffer[fd]->connect_fd==0){
                    buffer[fd]->connect_fd=fd;
                }else{
                    error(1,0,"too many connections");
                }
            }
        }

        for(i=0;i<maxfd+1;++i){
            int r=0;
            if(i==listen_fd){
                continue;
            }
            if(FD_ISSET(i,&readset)){
                r=onSocketRead(i,buffer[i]);
            }
            if(r==0 && FD_ISSET(i,&writeset)){
                r=onSocketWrite(i,buffer[i]);
            }
            if(r){
                buffer[i]->connect_fd=0;
                close(i);
            }
        }

    }
}
*/