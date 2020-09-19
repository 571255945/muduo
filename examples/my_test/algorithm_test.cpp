//
// Created by root on 1/2/20.
//

#if 0//找出数组中任意一个重复的数字

#include <iostream>
#include <vector>
using namespace std;



int main()
{


    return 0;
}

#endif


#if 0//找出数组中任意一个重复的数字

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

void test4()
{
    int a[]={1,2,3,4,5,6,19,20,32,44,32};
    int ret=findRepeat(a, sizeof(a)/ sizeof(int));
    cout<<ret<<endl;
}

int main()
{
    test1();
    test2();
    test3();
    test4();
    return 0;
}


#endif