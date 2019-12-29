//
// Created by root on 11/2/19.
//

#if 1

#include <boost/program_options.hpp>
#include <boost/noncopyable.hpp>
#include <iostream>
int main()
{
    std::cout<<"boost test"<<std::endl;
    return 0;
}


#endif


#if 0 //找出数组中任意一个重复的数字

#include <iostream>
#include <vector>
using namespace std;

int findRepeat(int *a,size_t size)
{
    vector<int> temp;
    for (size_t i = 0; i < size; ++i) {
        //第一次为空则直接插入
        if(temp.empty()){
            temp.push_back(a[i]);
            continue;
        }
        //将数组中的值与临时数组的中的每一个值进行比较,如果相等说明是重复的数,直接返回
        for(size_t j=0;j<temp.size();++j){
            if(a[i]==temp[j]){
                return a[i];
            }
        }

        //如果走到这一步说明没有重复,那么直接插入临时数组
        temp.push_back(a[i]);
    }
    //没有重复时返回-1
    return -1;
}

void test1()
{
    int a[]={1,2,3,2,3,4,5,6};
    int ret=findRepeat(a, sizeof(a)/ sizeof(int));
    cout<<ret<<endl;
}

void test2()
{
    int a[]={1,2,3,4,5,6};
    int ret=findRepeat(a, sizeof(a)/ sizeof(int));
    cout<<ret<<endl;
}
void test3()
{
    int a[]={};
    int ret=findRepeat(a, sizeof(a)/ sizeof(int));
    cout<<ret<<endl;
}

int main()
{
    test1();
    test2();
    test3();
    return 0;
}


#endif


#if 0

#include <iostream>
using namespace std;

// 这种写法在Clion中是不允许的,会报错
// sizeof’ on array function parameter ‘a’ will return size of ‘int*’
//int GetSize(int a[]){
//    return sizeof(a);
//}

int GetSize(int *a) {
    return sizeof(a);
}
int main(){
    int arr[]={1,2,3,4,5};

    //5个整数,每个占8个字节(64位机器)
    cout<<sizeof(arr)<<endl;  //20

    //指向数组的第一个元素,本质上是一个指针,占8个字节(64位)
    int *arr1=arr;
    cout<< sizeof(arr1)<<endl;//8

    //数组作为参数传递时退化为一个指针,占8个字节(64位)
    cout<<GetSize(arr)<<endl; //8

    return 0;
}

#endif



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

#if 0


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

#if 0
#include <iostream>
using namespace std;

class Info{

};
class Info1{
public:
    Info1(){}
    ~Info1(){}
};
class Info2{
public:
    Info2(){}
    ~Info2(){}
    void test(){

    }
};
class Info3{
public:
    Info3(){}
    ~Info3(){}
    virtual void test(){

    }
};
int main()
{
    //1.空类型的实例不含任何信息,本该占用内存本该是0,但是该声明类型的实例时候必须占用一定空间,否则无法使
    // 用这些实例.占多少内存由编译器决定clion和vs 都是1(一般都是1)
    Info a;
    cout<<sizeof(a)<<endl;//1

    //2.在类中添加构造函数(和非虚的成员函数),再次sizeof()仍然为1,调用构造函数和析构函数只需要知道函数
    // 的地址即可,地址只与类型有关与类型的实例无关,编译器不会因为这两个函数而在实例内添加任何额外信息
    Info1 b;
    cout<< sizeof(b)<<endl;//1
    Info2 c;
    cout<< sizeof(c)<<endl;//1

    //3.虚函数的存在会让编译器为这个类型生成虚函数表,虚函数表为一个指针,32位机器上是4个字节,64位机器上是
    //8个字节
    Info3 d;
    cout<< sizeof(d)<<endl;//8

    return 0;
}

#endif
