//
// Created by root on 11/20/19.
//
//#include "lib/common.h"
#include <pthread.h>
#include <iostream>
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

#define  THREAD_NUMBER      4
#define  BLOCK_QUEUE_SIZE   100

typedef struct {
    int number;
    int *fd;
    int front;
    int rear;
    pthread_mutex_t mutex;
    pthread_cond_t cond;
} block_queue;
typedef struct {
    pthread_t thread_tid;//thread id
    long thread_count; //connections handled
}Thread;

Thread *thread_array;
/*
calloc函数，其原型void *calloc(size_t n, size_t size)；
其比malloc函数多一个参数，并不需要人为的计算空间的大小，比如如果
他要申请20个int类型空间,会int *p=(int*)calloc(20,sizeof(int)),
这样就省去了人为空间计算的麻烦。
 */
void block_queue_init(block_queue *blockQueue,int number){
    blockQueue->number=number;
    blockQueue->fd=(int*)calloc(number, sizeof(int));
    blockQueue->front=blockQueue->rear=0;
    pthread_mutex_init(&blockQueue->mutex,NULL);
    pthread_cond_init(&blockQueue->cond,NULL);
}
void block_queue_push(block_queue *blockQueue,int fd){
    pthread_mutex_lock(&blockQueue->mutex);
    blockQueue->fd[blockQueue->rear]=fd;
    if(++blockQueue->rear == blockQueue->number){
        blockQueue->rear=0;
    }
    printf("push fd %d\n",fd);
    pthread_cond_signal(&blockQueue->cond);
    pthread_mutex_unlock(&blockQueue->mutex);
}
int block_queue_pop(block_queue *blockQueue){
    pthread_mutex_lock(&blockQueue->mutex);
    while(blockQueue->front == blockQueue->rear){
        //为什么这接口中要加个锁呢？
        pthread_cond_wait(&blockQueue->cond,&blockQueue->mutex);
    }
    int fd=blockQueue->fd[blockQueue->front];
    if(++blockQueue->front==blockQueue->number){
        blockQueue->front=0;
    }
    printf("pop fd %d\n",fd);
    pthread_mutex_unlock(&blockQueue->mutex);
    return fd;
}
void loop_echo(int fd) {
    char outbuf[MAXLINE + 1];
    size_t outbuf_used = 0;
    ssize_t result;
    while (1) {
        char ch;
        result = recv(fd, &ch, 1, 0);

        //断开连接或者出错
        if (result == 0) {
            printf("client closed \n");
            close(fd);//关闭连接
            break;
        } else if (result == -1) {
            error(1, errno, "read error");
            break;
        }

        if (outbuf_used < sizeof(outbuf)) {
            outbuf[outbuf_used++] = ch;
        }

        if (ch == '\n') {
            send(fd, outbuf, outbuf_used, 0);
//            fflush(stdout);
            outbuf_used = 0;
            continue;
        }
    }
}
void* thread_run(void *arg){
    pthread_t tid=pthread_self();
    pthread_detach(tid);

    block_queue *blockQueue=(block_queue *)arg;
    while(1){
        int fd=block_queue_pop(blockQueue);
        printf("get fd in thread,fd=%d,tid=%d\n",fd,tid);
        loop_echo(fd);
    }
}


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
    int listen_fd=tcp_server_listen(SERV_PORT);

    block_queue blockQueue;
    block_queue_init(&blockQueue,BLOCK_QUEUE_SIZE);

    thread_array=(Thread *)calloc(THREAD_NUMBER,sizeof(Thread));
    int i;
    for(i=0;i<THREAD_NUMBER;i++){
        pthread_create(&(thread_array[i].thread_tid),NULL,
                &thread_run,(void*)&blockQueue);
    }

    while(1){
        struct sockaddr_storage ss;
        socklen_t slen= sizeof(ss);
        int fd=accept(listen_fd,(struct sockaddr*)&ss,&slen);
        if(fd<0){
            error(1,errno,"accept failed");
        }else{
            block_queue_push(&blockQueue,fd);
        }
    }
//    return 0;

}

