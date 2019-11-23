//
// Created by root on 9/22/19.
//

#include <iostream>
#include <functional>
#include <memory>

using namespace std;

class classA{
    typedef std::function<void(int i)> cbfunc;
//    typedef std::function<void> cbfunc;
public:
    classA(){}
    ~classA(){}

    void handle(int i){
        std::cout<<"classA::handle"<<std::endl;
        handle_(i);
    }
    void regist(cbfunc func){
        handle_=std::move(func);//func;//
    }

private:
    cbfunc handle_;
};

class classB{
public:
    classB(classA& ca){
        ca.regist([this](int i){classB::handle(i);});
    }
    ~classB(){}

    void handle(int i){
        std::cout<<"classB , handle message , i = "<<i<<std::endl;
    }
};



int main()
{
//    printf("hello my test");
    classA testa;
    classB testb(testa);

    testa.handle(10);
    return 0;
}
