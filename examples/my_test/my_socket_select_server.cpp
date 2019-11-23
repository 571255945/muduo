//
// Created by root on 11/9/19.
//
//#include"lib/common.h"

//homework_server  只支持一次服务一个客户端，这里用select多路复用的方式实现下server
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
static int count;

const int fds_nums=64;

static void sig_int(int signo){
    printf("\nreceived %d datagrams\n",count);
    exit(0);
}


int main()
{
    int fds_array[64];//fds_array[64]={-1} 只把第一元素初始话为了-1；
    memset(fds_array,-1, sizeof(fds_array));

    //1.create
    int listen_fd=socket(AF_INET,SOCK_STREAM,0);

    //2.init
    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_port=htons(SERV_PORT);
    server_addr.sin_family=AF_INET;
    server_addr.sin_addr.s_addr=INADDR_ANY;

    //3.set reuse(SOL_SOCKET 套接字级别)
    int on=1;
    setsockopt(listen_fd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on));

    //4.bind
    socklen_t len= sizeof(server_addr);
    int rt1=bind(listen_fd,(struct sockaddr*)&server_addr,len);
    if(rt1<0){
        error(1,errno,"bind failed");
    }

    //5.listen
    int rt2=listen(listen_fd,1024);
    if(rt2<0){
        error(1,errno,"listen failed");
    }


    fd_set allreads;
    fd_set readmasks;
    FD_ZERO(&allreads);
    FD_SET(0,&allreads);
    FD_SET(listen_fd,&allreads);
    int max_fd=-1;//最大文件描述符的下标

    int i=0;
    fds_array[i]=listen_fd;

    struct timeval timeout={5,0};//5s 0毫秒
    int done=0;
    while(!done)
    {
        max_fd = -1;
        int i=0;
        for(;i<fds_nums;++i){
            if(fds_array[i]>0){
                //设置fds_array[i]的位
                FD_SET(fds_array[i],&allreads);
                //计算最大fd
                max_fd=max_fd>fds_array[i]?max_fd:fds_array[i];
            }
        }
        readmasks=allreads;
        //最后timeout为空表示阻塞等待
        int ret=select(max_fd+1,&readmasks,NULL,NULL,NULL);
        switch(ret){
            case 0:
                //超时而且没有任何描述符就绪
                printf("timeout...\n");
                break;
            case -1:
                perror("select error");
                exit(1);
            default:
            {
                i=0;
                for(;i<fds_nums;++i){
                    if(fds_array[i]==listen_fd &&
                    FD_ISSET(listen_fd,&readmasks)){//有连接进来
                        //是监听套接字，且就绪
                        struct sockaddr_in client_addr;
                        socklen_t len= sizeof(client_addr);
                        int connfd=accept(listen_fd,(struct sockaddr*)&client_addr,&len);
                        if(connfd<0){
                            error(1,errno,"connect error");
                        }
                        printf("get a new client: %s:%d\n",inet_ntoa(client_addr.sin_addr),
                                ntohs(client_addr.sin_port));

                        //将客户端加描述符集合
                        int j=0;
                        for(;j<fds_nums;++j){
                            if(fds_array[j]==-1){
                                fds_array[j]=connfd;
                                break;
                            }
                        }
                        if(j==fds_nums){
                            //空间已用完
                            close(connfd);
                        }
                        }
                        else{//有事件感知
                            if(fds_array[i]>0&&
                            FD_ISSET(fds_array[i],&readmasks)){
                                char readbuf[1024]={0};
                                char writebuf[1024]={0};
                                //从fd_array[i]这个客户端读取数据
                                ssize_t rt=read(fds_array[i],readbuf,sizeof(readbuf)-1);
                                if(rt<0){
                                    error(1,errno,"read error");
                                }else if(rt==0){
                                    printf("client close");
                                    close(fds_array[i]);
                                    fds_array[i]=-1;
                                }else{
                                    readbuf[rt]=0;
                                    printf("recvice:%s\n",readbuf);
                                    sprintf(writebuf,"Hi,%s\n",readbuf);
                                    printf("send %s\n",writebuf);
                                    fflush(stdout);//刷新输出缓冲，否则输出信息不会打出来
                                    send(fds_array[i],writebuf,strlen(writebuf),0);

                                }
                            }
                        }
                    }

                    }
            break;

        }
    }
}