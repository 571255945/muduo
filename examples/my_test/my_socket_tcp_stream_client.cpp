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

#if 0
int main()
{
    //1.创建socket
    int l_fd=socket(AF_INET,SOCK_STREAM,0);
    //2.初始化
    struct sockaddr_in server_addr;
    bzero(&server_addr,sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_port=htons(SERV_PORT);
    inet_pton(AF_INET,"127.0.0.1",&server_addr.sin_addr);

    //连接
    socklen_t server_len= sizeof(server_addr);
    int conn_rt=connect(l_fd,(struct sockaddr *)&server_addr,server_len);
    if(conn_rt<0){
        error(1,errno,"connect error");
    }
    struct {
        u_int32_t message_length;
        u_int32_t message_type;
        char data[128];
    } message;

    /*这样定义错的吗？
     * struct message{
        u_int32_t message_length;
        u_int32_t message_type;
        char data[128];
    } ;
     * */
    int n;
    while(fgets(message.data,sizeof(message.data),stdin)!=NULL){
        n=strlen(message.data);
        message.message_length=htonl(n);
        message.message_type=htonl(1);
        if(send(l_fd,(char*)&message,sizeof(message.message_length)+sizeof(message.message_type)+n,0)<0){
            error(1,errno,"send failed");
        }

    }
    exit(0);

}
#endif

#if 1

int main(int argc, char **argv) {


    int socket_fd;
    socket_fd = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(43211);
    inet_pton(AF_INET, "127.0.0.1", &server_addr.sin_addr);

    /*
     *     socklen_t server_len = sizeof(server_addr);
    int connect_rt = connect(socket_fd, (struct sockaddr *) &server_addr, server_len);
     * */
    socklen_t server_len = sizeof(server_addr);
    int connect_rt = connect(socket_fd, (struct sockaddr *) &server_addr, server_len);
    if (connect_rt < 0) {
        printf("%d\n",errno);
        error(1, errno, "connect failed ");
    }

    struct {
        u_int32_t message_length;
        u_int32_t message_type;
        char data[128];
    } message;


    int n;

    while (fgets(message.data, sizeof(message.data), stdin) != NULL) {
        n = strlen(message.data);
        message.message_length = htonl(n);
        message.message_type = htonl(1);
        if (send(socket_fd, (char *) &message, sizeof(message.message_length) + sizeof(message.message_type) + n, 0) <
            0)
            error(1, errno, "send failure");

    }
    exit(0);
}
#endif