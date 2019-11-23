//
// Created by root on 10/3/19.
//

//#include  "lib/common.h"
#include<iostream>
#include <sys/un.h>
#include <sys/socket.h>
#include <netinet/in.h>

#include <string.h>
#include <arpa/inet.h>
#include <errno.h>
#include <error.h>
#include <unistd.h>

#define    SERV_PORT      43211
#define    MAXLINE        4096
#define    UNIXSTR_PATH   "/var/lib/unixstream1.sock"
//#define    UNIXSTR_PATH  "/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/test.txt"
#define    LISTENQ        1024
#define    BUFFER_SIZE    4096

int main(/*int argc, char **argv*/) {
//    if (argc != 2) {
//        error(1, 0, "usage: unixstreamserver <local_path>");
//    }

    int listenfd, connfd;
    socklen_t clilen;
    struct sockaddr_un cliaddr, servaddr;

    listenfd = socket(AF_LOCAL, SOCK_STREAM, 0);
    if (listenfd < 0) {
        error(1, errno, "socket create failed");
    }

    //文件叫什么名字没有关系，仅仅作为连接的地址，运行过程中文件大小属性等好像都不会变化，甚至可以删掉，文件不存在时,
    // bind会去创建;必须是文件不能是目录
    //没有创建权限时会报permission deny;
    char *local_path = UNIXSTR_PATH/*argv[1]*/;

    //unlink函数删除目录项，并且减少一个链接数。如果链接数达到0并且没有任何进程打开该文件，该文件内容才被真正删除。
    //unlink 操作，以便把存在的文件删除掉，这样可以保持幂等性;一次和多次请求某一个资源对于资源本身应该具有同样的结果
    // （网络超时等问题除外）。也就是说，其任意多次执行对资源本身所产生的影响均与一次执行的影响相同。
    unlink(local_path);
    bzero(&servaddr, sizeof(servaddr));

    //参数为AF_LOCAL
    servaddr.sun_family = AF_LOCAL;
    strcpy(servaddr.sun_path, local_path);

    if (bind(listenfd, (struct sockaddr *) &servaddr, sizeof(servaddr)) < 0) {
        error(1, errno, "bind failed");
    }

    if (listen(listenfd, LISTENQ) < 0) {
        error(1, errno, "listen failed");
    }

    clilen = sizeof(cliaddr);
    if ((connfd = accept(listenfd, (struct sockaddr *) &cliaddr, &clilen)) < 0) {
        if (errno == EINTR)
            error(1, errno, "accept failed");        /* back to for() */
        else
            error(1, errno, "accept failed");
    }

    char buf[BUFFER_SIZE];

    while (1) {
        bzero(buf, sizeof(buf));
        if (read(connfd, buf, BUFFER_SIZE) == 0) {
            printf("client quit");
            break;
        }
        printf("Receive: %s", buf);

        char send_line[MAXLINE];
        sprintf(send_line, "Hi, %s", buf);

        int nbytes = sizeof(send_line);

        if (write(connfd, send_line, nbytes) != nbytes)
            error(1, errno, "write error");
    }

    close(listenfd);
    close(connfd);

    exit(0);

}