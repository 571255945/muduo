//
// Created by root on 10/1/19.
//

#include <sys/socket.h>
#include <netdb.h>
#include <iostream>
#include<sys/types.h>

#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>

int socket_init()
{
    struct protoent* protocol = nullptr;
    protocol=getprotobyname("icmp");
    int sock=socket(AF_INET,SOCK_RAW,protocol->p_proto);
//    int sock=socket(AF_INET,SOCK_RAW,0);
    if(sock == -1){
        //error(1,errno,"create socket failed");
    }
    return sock;
}

int make_socket (uint16_t port)
{
    int sock;
    struct sockaddr_in name;

    /* 创建字节流类型的 IPV4 socket. */
    sock = socket (PF_INET, SOCK_STREAM, 0);
    if (sock < 0)
    {
        perror ("socket");
        exit (EXIT_FAILURE);
    }

    printf("sock(before bind) = %d\n",sock);
    /* 绑定到 port 和 ip. **注意使用网络字节序存储的** */
    name.sin_family = AF_INET; /* IPV4 */
    name.sin_port = htons (port);  /* 指定端口 */
    name.sin_addr.s_addr = htonl (INADDR_ANY); /* ipv4通配地址 ,IN6ADDR_ANY是IPv6的统配地址*/
    /* 把 IPV4 地址转换成通用地址格式，同时传递长度 */
    auto ret = bind (sock, (struct sockaddr *) &name, sizeof (name));
    //bind成功返回0
    if (ret < 0)
    {
        perror ("bind");
        exit (EXIT_FAILURE);
    }
    printf("sock(after bind) = %d\n",sock);

    return sock;
}

int main(int c, char **v) {
    printf("socket %d \n", socket_init());
    printf("socket %d \n", socket_init());

    make_socket(9000);
}

