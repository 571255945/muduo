//
// Created by root on 10/4/19.
//

#include<iostream>
#include <sys/un.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/signal.h>
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

static int count;

static void sig_int(int signo) {
    printf("\nreceived %d datagrams\n", count);
    exit(0);
}


int main(int argc, char **argv) {
    int listenfd;

    //1.创建socket
    listenfd = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server_addr.sin_port = htons(SERV_PORT);

    //2.绑定地址
    int rt1 = bind(listenfd, (struct sockaddr *) &server_addr, sizeof(server_addr));
    if (rt1 < 0) {
        error(1, errno, "bind failed ");
    }

    //3.开启监听
    int rt2 = listen(listenfd, LISTENQ);
    if (rt2 < 0) {
        error(1, errno, "listen failed ");
    }
    /*
    SIGIGN：忽略改信号
    SIGDEF：采用系统默认方式处理信号
    SIGCHLD：在一个进程终止或者停止时，将该信号发送给其父进程，父进程的wait函数通常用来捕捉这个信号
    SIGINT：当用户按中断键(delete/ctrl+c)时将产生这个信号
    SIGKILL：此信号可以用于杀死一个进程
    SIGSTOP：这是个作业控制信号，用于停止一个进程 这个信号和SIGKILL是仅有的两个不能被捕获或忽略的信号
    SYSUSR1/2:用户定义的信号，用于应用程序
    */
    signal(SIGINT, sig_int);//当用户按中断键(delete/ctrl+c)时将产生这个信号

    /*
     往一个已经接收到FIN的套接中写是允许的，接收到的FIN仅仅代表对方不再发送数据。并不能代表我不能发送数据给对方。
往一个FIN结束的进程中写(write)，对方会发送一个RST字段过来，TCP重置。如果再调用write就会产生SIGPIPE信号
     */
    signal(SIGPIPE, SIG_DFL);//采用系统默认方式处理信号

    int connfd;
    struct sockaddr_in client_addr;
    socklen_t client_len = sizeof(client_addr);

    //4.等待客户端连接
    if ((connfd = accept(listenfd, (struct sockaddr *) &client_addr, &client_len)) < 0) {
        error(1, errno, "bind failed ");
    }

    char message[MAXLINE];
    count = 0;

    for (;;) {
        //5.读取数据
        int n = read(connfd, message, MAXLINE);
        if (n < 0) {
            error(1, errno, "error read");
        }
        else if (n == 0)
        {  //client 调用shutdown关闭写操作后会将发送缓冲区的数据发送完，然后发送ＦIN，服务端这里read返回0就说
            //明知道了客户端已经不再发数据了,即处于半链接状态，然后调用error（error会调动exit）发送FIN让client
            //彻底关闭,如果注释掉client就关闭不了了，实验结果是read一直返回0，为什么会一直返回0呢？难道是不停收到
            // client发来的FIN？抓包并没有抓到FIN包，所以应该是收到的FIN状态一直保持着的缘故
            printf("read 0\n");
            error(1, 0, "client closed \n");//收到client的FIN后回发FIN包
        }
        message[n] = 0;
        printf("received %d bytes: %s\n", n, message);
        count++;

        char send_line[MAXLINE];
        sprintf(send_line, "Hi, %s", message);

        //sleep模拟client调用shutdown单侧关闭写方向后server和client的通讯还没有结束，这样shutdown方法
        // 不会让程序退出，而是等待server处理完成后才会在下一个循环中读到client发送的FIN包，然后再通过FIN
        // 包通知client优雅的关闭剩下的半个连接。如果client调用的是close方法的话，程序就直接退出了，服务端
        // 没有处理完的流程直接被忽略，所以close是“暴力关闭”
        sleep(20);
        //6.发送数据
        int write_nc = send(connfd, send_line, strlen(send_line), 0);
        printf("send bytes: %zu \n", write_nc);
        if (write_nc < 0) {
           error(1, errno, "error write");
        }
    }

}

