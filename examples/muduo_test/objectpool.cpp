//
// Created by root on 12/29/19.
//一个股票的内存池的迭代开发
//这个内存池对外提供一个get接口,可以通过这个接口获取给定名称的股票的动态内存
//

#if 1 //version 1

#include <boost/noncopyable.hpp>
#include <mutex>
#include <thread>
#include <memory>
#include <unordered_map>
#include <iostream>
#include <map>
#include <string>
#include <functional>

#include <boost/bind.hpp>
#include <boost/enable_shared_from_this.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/weak_ptr.hpp>

#define USE_BOOST_FUNC

using namespace std;


class Stock:boost::noncopyable{
public:
    Stock(string strName){
        strName_=strName;
        cout<<" Create Stock["<<strName_<<"]"<<endl;
    }
    ~Stock(){
        cout<<"Destroy Stock["<<strName_<<"]"<<endl;
    }
    string stockName() const { return strName_;}
private:
    string strName_;
};


//版本1中 股票池 std::map<string,shared_ptr<Stock>> stocks_ 中使用了shared_ptr<Stock>,
// 导致每只股票的引用计数无法清零,即股票对象在生命周期结束后无法被销毁
namespace Version1{
    //
    class StockFactory:boost::noncopyable{
    public:
        //如果要获取的股票不存在就创建一只这样股票并加入到哈希表中
        shared_ptr<Stock> get(const string& key);
        void dumpRefCount(){
            for(auto &item : stocks_){//如果是item会增加一次stocks_中的引用
                cout<<"Stock "<<item.first<<" use_count is "<<item.second.use_count()<<endl;
            }
        }
        size_t stockNum() const{ return stocks_.size();}
    private:
        mutable mutex mutex_;
        //StockFactory应该是一个单例,这里虽然没有用单例,但也禁用了copy,所以stocks_只有一份,多线程是会有竞争
        std::map<string,shared_ptr<Stock>> stocks_;
    };//StockFactory

      // 实现1
//    shared_ptr<Stock> StockFactory::get(const string &key) {
//        auto search = stocks_.find(key);
//        shared_ptr<Stock> pStock;
//
//        //加锁避免多线程竞争stock_
//        std::lock_guard<std::mutex> lock(mutex_);
//        //已经有这个元素了
//        if(search!=stocks_.end()){
//            pStock=stocks_[key];
//        }
//        else{//没有这个元素
//            pStock.reset(new Stock(key));
//            stocks_[key]=pStock;
//        }
//        return pStock;
//    }

    //更简单的实现
    shared_ptr<Stock> StockFactory::get(const string &key) {
        lock_guard<std::mutex> lock(mutex_);
        //从中取出一支股票的引用
        shared_ptr<Stock>& pStock=stocks_[key];
        //空指针说明没有这支股票
        if(nullptr==pStock){
            pStock.reset(new Stock(key));//重新创建一只股票
        }
        return pStock;
    }

    void test(){
        cout<<"hello version 1"<<endl;
        StockFactory stockFactory;
        {
            shared_ptr<Stock> stockHik = stockFactory.get("Hikvison");
            shared_ptr<Stock> stockAli = stockFactory.get("Alibaba");
            stockFactory.dumpRefCount();
            /* std::map<string,shared_ptr<Stock>> stocks_ 中用的是shared_ptr<Stock>所以可以看到
             * 最终两支股票的引用计数都是2
             * Stock Alibaba use_count is 2
             * Stock Hikvison use_count is 2
            */
        }
        stockFactory.dumpRefCount();
        /* std::map<string,shared_ptr<Stock>> stocks_ 中用的是shared_ptr<Stock>所以可以看到
         * 最终两支股票的引用计数都是1 无法被销毁
         * Stock Alibaba use_count is 1
         * Stock Hikvison use_count is 1
        */

    }
}//namespace version 1

//这个版本用weak_ptr替代了shared_ptr,解决了version 1 中股票对象无法销毁的问题,但这个版本中
// stocks_的大小只会增加不会减少,存在轻微的内存泄露,股票资源已经释放了,但仍然在stocks_中占据一个空间

namespace Version2{
    class StockFactory:boost::noncopyable{
    public:
        //如果要获取的股票不存在就创建一只这样股票并加入到哈希表中
        shared_ptr<Stock> get(const string& key);
        void dumpRefCount(){
            for(auto &item : stocks_){//如果是item会增加一次stocks_中的引用
                cout<<"Stock "<<item.first<<" use_count is "<<item.second.use_count()<<endl;
            }
            cout<<"size of stocks = "<<stockNum()<<endl;
        }
        size_t stockNum() const{ return stocks_.size();}
    private:
        mutable mutex mutex_;
        //StockFactory应该是一个单例,这里虽然没有用单例,但也禁用了copy,所以stocks_只有一份,多线程是会有竞争
        std::map<string,weak_ptr<Stock>> stocks_;
    };//StockFactory

    shared_ptr<Stock> StockFactory::get(const string &key) {
        shared_ptr<Stock> pStock;
        lock_guard<std::mutex> lock(mutex_);
        //从中取出一支股票的弱引用
        weak_ptr<Stock>& wkstock=stocks_[key];
        //去尝试提升这个弱引用
        pStock=wkstock.lock();
        if(nullptr==pStock){//提升失败,说明没有这支股票
            pStock.reset(new Stock(key));//重新创建一只股票
            wkstock=pStock;//更新原有的引用
        }
        return pStock;
    }

    void test(){
        cout<<"hello version 2"<<endl;
        StockFactory stockFactory;
        {
            shared_ptr<Stock> stockHik = stockFactory.get("Hikvison");
            shared_ptr<Stock> stockAli = stockFactory.get("Alibaba");

            stockFactory.dumpRefCount();
            /* std::map<string,weak_ptr<Stock>> stocks_ 中用的是weak_ptr<Stock>所以可以看到
             * 最终两支股票的引用计数都是1
             * Stock Alibaba use_count is 1
             * Stock Hikvison use_count is 1
             * size of stocks = 2
            */
        }
        stockFactory.dumpRefCount();
        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 2
        */



    }
}//namespace version 2



//为了解决版本2中股票对象池数量只增不减的问题,这个版本采用了在reset方法中传入了自定义的删除函数,
// 保证对象在销毁时,从股票的哈希表中移除
//pStock.reset(new Stock(key),
//        std::bind(&StockFactory::deleteStock,this,std::placeholders::_1));
//但这个版本依然有问题,StockFactory::get 方法中的 pStock.reset方法把原始的this(StockFactory)
// 指针保存到了std::function(std::bind)中(StockFactory::deleteStock),如果StockFactory的生
// 命周期比stock短,那么stock的析构去回调StockFactory::deleteStock时,因为StockFactory已经析构,
// StockFactory 中的mutex_也被销毁了,这时执行到lock_guard<std::mutex> lock(mutex_);结果将是
// 未知的,最好的结果就是崩溃,也可能一直阻塞下去,test_bad()运行结果来看大概率一直阻塞下去.

namespace Version3{
    class StockFactory/*:boost::noncopyable*/{
    public:
        //如果要获取的股票不存在就创建一只这样股票并加入到哈希表中
        shared_ptr<Stock> get(const string& key);
        void dumpRefCount(){
            for(auto &item : stocks_){//如果是item会增加一次stocks_中的引用
                cout<<"Stock "<<item.first<<" use_count is "<<item.second.use_count()<<endl;
            }
            cout<<"size of stocks = "<<stockNum()<<endl;
        }
        StockFactory(const StockFactory& thr){
            cout<<"copy StockFactory"<<endl;
        }
        StockFactory(){
            cout<<"create StockFactory"<<endl;
        }
        ~StockFactory(){
            cout<<"delete StockFactory"<<endl;
        }
        size_t stockNum() const{ return stocks_.size();}
    private:
        mutable mutex mutex_;
        //StockFactory应该是一个单例,这里虽然没有用单例,但也禁用了copy,所以stocks_只有一份,多线程是会有竞争
        std::map<string,weak_ptr<Stock>> stocks_;
        void deleteStock(Stock* stock){
            if(stock){
                lock_guard<std::mutex> lock(mutex_);
                stocks_.erase(stock->stockName());
            }
            delete stock;
        }
    };//StockFactory

    shared_ptr<Stock> StockFactory::get(const string &key) {
        shared_ptr<Stock> pStock;
        lock_guard<std::mutex> lock(mutex_);
        //从中取出一支股票的弱引用
        weak_ptr<Stock>& wkstock=stocks_[key];
        //去尝试提升这个弱引用
        pStock=wkstock.lock();
        if(nullptr==pStock){//提升失败,说明没有这支股票
            pStock.reset(new Stock(key),
                    std::bind(&StockFactory::deleteStock,this,std::placeholders::_1));//重新创建一只股票
            wkstock=pStock;//更新原有的引用
        }
        return pStock;
    }

    void test(){
        cout<<"hello version 3"<<endl;
        StockFactory stockFactory;
        {
            shared_ptr<Stock> stockHik = stockFactory.get("Hikvison");
            shared_ptr<Stock> stockAli = stockFactory.get("Alibaba");

            stockFactory.dumpRefCount();
            /* std::map<string,weak_ptr<Stock>> stocks_ 中用的是weak_ptr<Stock>所以可以看到
             * 最终两支股票的引用计数都是1
             * Stock Alibaba use_count is 1
             * Stock Hikvison use_count is 1
             * size of stocks = 2
            */
        }
        stockFactory.dumpRefCount();
        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 0
        */
    }
    void test_bad(){
        cout<<"hello version 3(bad test)"<<endl;

        shared_ptr<Stock> copy;
        {
            //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
            // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
            shared_ptr<StockFactory> stockFactory(new StockFactory());
            {
                shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");
                copy = stockHik;//延长hik的生命周期
                stockFactory->dumpRefCount();

//                    //模拟stockfactory的生命周期比stock短,这样模拟似乎不太好,毕竟要是手动删除的,version 4手动删除也没办法
//                    if(pStockFactory!= nullptr){
//                        delete pStockFactory;
//                    }
            }
        }

    }
}//namespace version 3

//将版本3中的this指针改为shared_ptr.方法是:采用 shared_from_this(),为了使用它StockFactory
// 不能是stack object 必须是heap object
// 到此为止,Stockfactory的已经没有问题了,但是Stockfactory的shared_ptr传入了deleteStock中,
// StockFactory的生命周期被意外延长了(事实上StockFactory应该是个单例,程序运行期间都不应该被销
// 毁,所以不存在生命周期意外延长的问题),当我们要在deleteStock中实现"如果对象还活着就调用其成员函数,
// 否则忽略之"这样的语义时,就会有问题了,因为deleteStock保存有Stockfactory的shared_ptr指针,
// Stockfactory会一直存在
namespace Version4{
    class StockFactory:public enable_shared_from_this<StockFactory>
            ,boost::noncopyable{
    public:
        //如果要获取的股票不存在就创建一只这样股票并加入到哈希表中
        shared_ptr<Stock> get(const string& key);
        void dumpRefCount(){
            for(auto &item : stocks_){//如果是item会增加一次stocks_中的引用
                cout<<"Stock "<<item.first<<" use_count is "<<item.second.use_count()<<endl;
            }
            cout<<"size of stocks = "<<stockNum()<<endl;
        }
        size_t stockNum() const{ return stocks_.size();}
    private:
        mutable mutex mutex_;
        //StockFactory应该是一个单例,这里虽然没有用单例,但也禁用了copy,所以stocks_只有一份,多线程是会有竞争
        std::map<string,weak_ptr<Stock>> stocks_;
        void deleteStock(Stock* stock){
            if(stock){
                lock_guard<std::mutex> lock(mutex_);
                stocks_.erase(stock->stockName());
            }
            delete stock;
        }
    };//StockFactory

    shared_ptr<Stock> StockFactory::get(const string &key) {
        shared_ptr<Stock> pStock;
        lock_guard<std::mutex> lock(mutex_);
        //从中取出一支股票的弱引用
        weak_ptr<Stock>& wkstock=stocks_[key];
        //去尝试提升这个弱引用
        pStock=wkstock.lock();
        if(nullptr==pStock){//提升失败,说明没有这支股票
            pStock.reset(new Stock(key),
                         std::bind(&StockFactory::deleteStock,
                                 shared_from_this(),
                                 std::placeholders::_1));//重新创建一只股票
            wkstock=pStock;//更新原有的引用
        }
        return pStock;
    }

    void test(){
        cout<<"hello version 4"<<endl;
        shared_ptr<Stock> copy;//
        {
            //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
            // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
            shared_ptr<StockFactory> stockFactory(new StockFactory());
            {
                shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");
                copy = stockHik;//延长hik的生命周期
                stockFactory->dumpRefCount();
            }
        }
        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 0
        */
    }
}//namespace version 4

namespace Version5{
class StockFactory:public boost::enable_shared_from_this<StockFactory>
            ,boost::noncopyable{
    public:
        //如果要获取的股票不存在就创建一只这样股票并加入到哈希表中
        boost::shared_ptr<Stock> get(const string& key);
        void dumpRefCount(){
            for(auto &item : stocks_){//如果是item会增加一次stocks_中的引用
                cout<<"Stock "<<item.first<<" use_count is "<<item.second.use_count()<<endl;
            }
            cout<<"size of stocks = "<<stockNum()<<endl;
        }
        size_t stockNum() const{ return stocks_.size();}
    private:
        mutable mutex mutex_;
        //StockFactory应该是一个单例,这里虽然没有用单例,但也禁用了copy,所以stocks_只有一份,多线程是会有竞争
        std::map<string,boost::weak_ptr<Stock>> stocks_;
       static void weakDeleteStockCallback(const boost::weak_ptr<StockFactory>& wkFactory,Stock* stock){
           if(wkFactory.expired()){
               cout<<"factory died"<<endl;
           }else{
               boost::shared_ptr<StockFactory> factory(wkFactory);//尝试提升,提升失败为null
               if(factory!= nullptr)
               {
                   if(stock!= nullptr){
                       factory->removeStock(stock);
                       delete stock;
                   }
               }
               else{
                   cout<<"factory died"<<endl;
               }

           }

        }

        void removeStock(Stock* stock)
        {
            if (stock)
            {
                lock_guard<std::mutex> lock(mutex_);
                stocks_.erase(stock->stockName());

            }
        }


    };//StockFactory

    boost::shared_ptr<Stock> StockFactory::get(const string &key) {
        boost::shared_ptr<Stock> pStock;
        lock_guard<std::mutex> lock(mutex_);
        //从中取出一支股票的弱引用
        boost::weak_ptr<Stock>& wkstock=stocks_[key];
        //去尝试提升这个弱引用
        pStock=wkstock.lock();
        if(nullptr==pStock){//提升失败,说明没有这支股票
            pStock.reset(new Stock(key),
                         boost::bind(&StockFactory::weakDeleteStockCallback,
                                     boost::weak_ptr<StockFactory>(shared_from_this()),_1));
            wkstock=pStock;//更新原有的引用
        }
        return pStock;
    }

    void test_bad(){
        cout<<"hello version 5(test bad)"<<endl;

        boost::shared_ptr<Stock> copy;//
        {
            //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
            // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
            boost::shared_ptr<StockFactory> stockFactory(new StockFactory());
            {
                boost::shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");
                copy = stockHik;//延长hik的生命周期
                stockFactory->dumpRefCount();
            }
        }

        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 0
        */
    }

    void test(){
        cout<<"hello version 5"<<endl;

        //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
        // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
        boost::shared_ptr<StockFactory> stockFactory(new StockFactory());
        {
            boost::shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");

            stockFactory->dumpRefCount();
        }

        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 0
        */
    }
}//namespace version 5

#if 1 //boost和std的bind是一样的
namespace Version6{
    class StockFactory:public std::enable_shared_from_this<StockFactory>
            ,boost::noncopyable{
    public:
        //如果要获取的股票不存在就创建一只这样股票并加入到哈希表中
        std::shared_ptr<Stock> get(const string& key);
        void dumpRefCount(){
            for(auto &item : stocks_){//如果是item会增加一次stocks_中的引用
                cout<<"Stock "<<item.first<<" use_count is "<<item.second.use_count()<<endl;
            }
            cout<<"size of stocks = "<<stockNum()<<endl;
        }
        size_t stockNum() const{ return stocks_.size();}
    private:
        mutable mutex mutex_;
        //StockFactory应该是一个单例,这里虽然没有用单例,但也禁用了copy,所以stocks_只有一份,多线程是会有竞争
        std::map<string,std::weak_ptr<Stock>> stocks_;

        //不是static才能编译过
        static void weakDeleteStockCallback(const std::weak_ptr<StockFactory>& wkFactory,Stock* stock){
            if(wkFactory.expired()){//如果factory的生命周期比stock短就结束,陈硕书上的源码是没有这个判断的
                cout<<"factory died"<<endl;
            }
            else{
                std::shared_ptr<StockFactory> factory(wkFactory);//尝试提升,提升失败为null
                if(factory!= nullptr)
                {
                    if(stock!= nullptr){
                        factory->removeStock(stock);
                        delete stock;
                    }
                }
                else{
                    cout<<"factory died"<<endl;
                }

            }

        }

        void removeStock(Stock* stock)
        {
            if (stock)
            {
                lock_guard<std::mutex> lock(mutex_);
                stocks_.erase(stock->stockName());

            }
        }

    };//StockFactory

    std::shared_ptr<Stock> StockFactory::get(const string &key) {
        std::shared_ptr<Stock> pStock;
        lock_guard<std::mutex> lock(mutex_);
        //从中取出一支股票的弱引用
        std::weak_ptr<Stock>& wkstock=stocks_[key];
        //去尝试提升这个弱引用
        pStock=wkstock.lock();
        if(nullptr==pStock){//提升失败,说明没有这支股票
            pStock.reset(new Stock(key),
                         std::bind(&StockFactory::weakDeleteStockCallback,
                                   std::weak_ptr<StockFactory>(shared_from_this()),
                                     std::placeholders::_1));
            wkstock=pStock;//更新原有的引用
        }
        return pStock;
    }

    void test(){
        cout<<"hello version 6"<<endl;

        {
            //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
            // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
            shared_ptr<StockFactory> stockFactory(new StockFactory());
            {
                std::shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");
                stockFactory->dumpRefCount();
            }
        }

        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 0
        */
    }

    void test_bad(){
        cout<<"hello version 6(test bad)"<<endl;

        std::shared_ptr<Stock> copy;//
        {
            //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
            // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
            std::shared_ptr<StockFactory> stockFactory(new StockFactory());
            {
                std::shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");
                copy = stockHik;//延长hik的生命周期
                stockFactory->dumpRefCount();
            }
        }

        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 0
        */
    }

}//namespace version 6
#endif


#if 1 //boost和std的bind是一样的
/*
         void removeStock(Stock* stock)
        {
            if (stock)
            {
                lock_guard<std::mutex> lock(mutex_);
                stocks_.erase(stock->stockName());

            }
        }
        多线程情况下这里会有竞争,Race condition 发生在 StockFactory::deleteStock()
        这个成员函数里，如果进入 deleteStock 之后，在 lock 之前，有别的线程调用了相同
        key 的 StockFactory::get()，会造成此 key 被从 stocks_ 哈希表中错误地删除，
        因此会重复创建 Stock 对象。程序不会 crash 也不会有 memory leak，但是程序中
        存在两个相同 key 的 Stock 对象，违背了对象池应有的语意(同一对象的内存应该相同)。

        详细解释参考:https://zhuanlan.zhihu.com/p/30522095
*/
namespace Version7{
    class StockFactory:public std::enable_shared_from_this<StockFactory>
            ,boost::noncopyable{
    public:
        //如果要获取的股票不存在就创建一只这样股票并加入到哈希表中
        std::shared_ptr<Stock> get(const string& key);
        void dumpRefCount(){
            for(auto &item : stocks_){//如果是item会增加一次stocks_中的引用
                cout<<"Stock "<<item.first<<" use_count is "<<item.second.use_count()<<endl;
            }
            cout<<"size of stocks = "<<stockNum()<<endl;
        }
        size_t stockNum() const{ return stocks_.size();}
    private:
        mutable mutex mutex_;
        //StockFactory应该是一个单例,这里虽然没有用单例,但也禁用了copy,所以stocks_只有一份,多线程是会有竞争
        std::map<string,std::weak_ptr<Stock>> stocks_;

        //不是static才能编译过
        static void weakDeleteStockCallback(const std::weak_ptr<StockFactory>& wkFactory,Stock* stock){
            if(wkFactory.expired()){//如果factory的生命周期比stock短就结束,陈硕书上的源码是没有这个判断的
                cout<<"factory died"<<endl;
            }
            else{
                std::shared_ptr<StockFactory> factory(wkFactory);//尝试提升,提升失败为null
                if(factory!= nullptr)
                {
                    if(stock!= nullptr){
                        factory->removeStock(stock);
                        delete stock;
                    }
                }
                else{
                    cout<<"factory died"<<endl;
                }

            }

        }

//        void removeStock(Stock* stock)//有问题的代码
//        {
//            if (stock)
//            {
//                lock_guard<std::mutex> lock(mutex_);
//                stocks_.erase(stock->stockName());
//
//            }
//        }

        void removeStock(Stock* stock)
        {
            if (stock)
            {
                std::lock_guard<std::mutex> lock(mutex_);
                auto it = stocks_.find(stock->stockName());
                assert(it != stocks_.end());
                if (it->second.expired())
                {
                    stocks_.erase(stock->stockName());
                }
            }
        }


    };//StockFactory

    std::shared_ptr<Stock> StockFactory::get(const string &key) {
        std::shared_ptr<Stock> pStock;
        lock_guard<std::mutex> lock(mutex_);
        //从中取出一支股票的弱引用
        std::weak_ptr<Stock>& wkstock=stocks_[key];
        //去尝试提升这个弱引用
        pStock=wkstock.lock();
        if(nullptr==pStock){//提升失败,说明没有这支股票
            pStock.reset(new Stock(key),
                         std::bind(&StockFactory::weakDeleteStockCallback,
                                   std::weak_ptr<StockFactory>(shared_from_this()),
                                   std::placeholders::_1));
            wkstock=pStock;//更新原有的引用
        }
        return pStock;
    }

    void test(){
        cout<<"hello version 7"<<endl;

        {
            //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
            // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
            shared_ptr<StockFactory> stockFactory(new StockFactory());
            {
                std::shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");
                stockFactory->dumpRefCount();
            }
            stockFactory->dumpRefCount();
        }

        /* 调用了股票的析构函数
         * Stock Alibaba use_count is 0
         * Stock Hikvison use_count is 0
         * size of stocks = 0
        */
    }

    void test_bad(){
        cout<<"hello version 7(test bad)"<<endl;

        std::shared_ptr<Stock> copy;//
        {
            //用heap对象才能模拟出阻塞的问题,站对象不行(本来以为是因为栈对象会导致复制,
            // 可是也传递this指针时没有调用构造,可能是调用了拷贝构造了,测试发现拷贝构造也没有调用)
            std::shared_ptr<StockFactory> stockFactory(new StockFactory());
            {
                std::shared_ptr<Stock> stockHik = stockFactory->get("Hikvison");
                copy = stockHik;//延长hik的生命周期
                stockFactory->dumpRefCount();
            }
            stockFactory->dumpRefCount();
        }

    }

}//namespace version 7
#endif

int main()
{

//    Version1::test();
//    Version2::test();
//    Version3::test();
//    Version3::test_bad();
//    Version4::test();
//    Version5::test();

//    Version5::test();
//    Version5::test_bad();

//    Version6::test();
//    Version6::test_bad();

    Version7::test();
    Version7::test_bad();

    getchar();
    return 0;
}

#endif