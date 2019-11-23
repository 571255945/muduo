//
// Created by root on 11/2/19.
//
#if 0


#include <iostream>
#include<stdio.h>
#include<string.h>
using namespace std;
#define MAXLINE 1024
int main()
{
    //这两个特性为什么老是区分不开？！
    char revline[MAXLINE];
    while(fgets(revline,12,stdin)!= nullptr)//输入123回车
    {
        int j= sizeof(revline);//计算整个字符数组的长度，等于ＭAXLINE
        cout<<"j(sizeof) = "<<j<<endl;//1024
        int i=strlen(revline);//strlen返回字符数组中的真实长度，含最后的换行符‘\n’
        cout<<"i(strlen) = "<<i<<endl;//4
        if(revline[i-1]=='\n'){//将最后的换行符变为字符串结束符
            revline[i-1]='\0';//注意这里是'\0'（或者直接写作0）而不是‘0’，如果是‘0’就是0字符而不是字符串结束符了
        }
        printf("%s\n",revline);
    }
    return 0;
}

#endif

#if 1


#include <iostream>
#include<stdio.h>
#include<string.h>
using namespace std;
#define MAXLINE 1024
int main()
{
    //这两个特性为什么老是区分不开？！
    //理解：
    // sizeof求的是空间大小，‘\0’占用空间了自然要算它的大小；
    // strlen求的是字符串的长度，字符串当然不包含最后的字符串结束符，所以就不算在长度之内了
    char revline[]={'1','2','3','4','5','6','\0'};
    cout<<"len (sizeof) ="<< sizeof(revline)<<endl;//7
    cout<<"len (strlen) ="<< strlen(revline)<<endl;//6；会忽略最后的字符串结束符

    return 0;
}

#endif