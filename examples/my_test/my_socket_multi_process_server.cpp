//
// Created by root on 11/18/19.
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
#include <wait.h>

#define    SERV_PORT      43211
#define    MAXLINE        4096
#define    UNIXSTR_PATH   "/var/lib/unixstream1.sock"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096
#define MAXLINE 4096

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
void child_run(int fd){
    char outbuf[MAXLINE+1];
    size_t outbuf_used=0;
    ssize_t result;

    while(1){
        char ch;
        //这里的recv是阻塞模式的
        result = recv(fd,&ch,1,0);//一次接收一个字符
        //如果recv函数在等待协议接收数据时网络中断了，那么它返回0。
        if(result == 0){
            printf("client closed\n");
            break;
        }else if(result==-1){
            perror("read");
            break;
        }
        if(outbuf_used< sizeof(outbuf)){
            outbuf[outbuf_used++]=ch;
        }
        if(ch=='\n'){
            send(fd,outbuf,outbuf_used,0);
            outbuf_used=0;
            continue;
        }
    }
}
//处理子进程退出的方式一般是注册一个信号处理函数，
// 捕捉信号 SIGCHILD 信号，然后再在信号处理函数里
// 调用 waitpid 函数来完成子进程资源的回收。
void sigchld_handler(int sig)
{
    //这里选项 WNOHANG 用来告诉内核，即使还有未终止的子进程也不要阻塞
    // 在 waitpid 上。注意这里不可以使用 wait，
    // 因为 wait 函数在有未终止子进程的情况下，没有办法不阻塞。
    printf("quit child process\n");
    while(waitpid(-1,0,WNOHANG)>0){
        return;
    }
}

int main(int c,char **v){
    int listen_fd=tcp_server_listen(SERV_PORT);
    signal(SIGCHLD,sigchld_handler);
    while(1){
        struct sockaddr_storage ss;
        socklen_t slen= sizeof(ss);
        int conn_fd=accept(listen_fd,(struct sockaddr*)&ss,&slen);
        if(conn_fd<0){
            error(1,errno,"accept failed");
            exit(1);
        }
        /*
         * 从父进程派生出的子进程，同时也会复制一份描述字，也就是说，连接套接字和
         * 监听套接字的引用计数都会被加 1，而调用 close 函数则会对引用计数进行减 1 操作，
         * 这样在套接字引用计数到 0 时，才可以将套接字资源回收。所以，这里的 close
         * 函数非常重要，缺少了它们，就会引起服务器端资源的泄露。*/
        //fork先返回非零值，再返回零值
        if(fork()==0){//子进程，只负责连接套接字
            //子进程不需要关心监听套接字，故而在这里关闭掉监听套接字 listen_fd
            close(listen_fd);
            printf("child process\n");
            child_run(conn_fd);
            exit(0);
        }else{   //父进程,只负责监听套接字
            printf("this is main process\n");
            //父进程不需要关心连接套接字，所以在这里关闭连接套接字
            close(conn_fd);
        }
    }
    return 0;
}


