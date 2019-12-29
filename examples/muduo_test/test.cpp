//
// Created by root on 12/28/19.
//

// reproduce race condition of Factory.cc if compiled with -DREPRODUCE_BUG

//#include "../Mutex.h"
//#include "muduo/base/Mutex.h"

#include <boost/noncopyable.hpp>
#include <mutex>
#include <thread>
#include <memory>
#include <unordered_map>

#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <iostream>

using namespace std;
using std::string;
#define REPRODUCE_BUG
void sleepMs(int ms)
{
    usleep(ms*1000);
}

class Stock : boost::noncopyable
{
public:
    Stock(const string& name)
            : name_(name)
    {
        printf("%ld: Stock[%p] %s\n", std::this_thread::get_id(), this, name_.c_str());
    }

    ~Stock()
    {
        printf("%ld: ~Stock[%p] %s\n", std::this_thread::get_id(), this, name_.c_str());
    }

    const string& key() const { return name_; }

private:
    string name_;
};


class StockFactory : boost::noncopyable
{
public:

    std::shared_ptr<Stock> get(const string& key)
    {
        std::shared_ptr<Stock> pStock;
        std::lock_guard<std::mutex> lock(mutex_);
        std::weak_ptr<Stock>& wkStock = stocks_[key];
        pStock = wkStock.lock();
        if (!pStock)
        {
            pStock.reset(new Stock(key),
                         [this] (Stock* stock) { deleteStock(stock); });
            wkStock = pStock;
        }
        return pStock;
    }

private:

    void deleteStock(Stock* stock)
    {
        printf("%ld: deleteStock[%p]\n", std::this_thread::get_id(), stock);
        if (stock)
        {
            sleepMs(500);
            std::lock_guard<std::mutex>  lock(mutex_);
#ifdef REPRODUCE_BUG
            printf("%ld: erase %zd\n", std::this_thread::get_id(), stocks_.erase(stock->key()));
#else
            auto it = stocks_.find(stock->key());
            assert(it != stocks_.end());
            if (it->second.expired())
            {
                stocks_.erase(it);
            }
            else
            {
                printf("%ld: %s is not expired\n", std::this_thread::get_id(), stock->key().c_str());
            }
#endif
        }
        delete stock;  // sorry, I lied
    }

    std::mutex mutex_;
    std::unordered_map<string, std::weak_ptr<Stock> > stocks_;
};

void threadB(StockFactory* factory)
{
    sleepMs(250);
    auto stock = factory->get("MS");
    printf("%ld: stock %p\n", std::this_thread::get_id(), stock.get());


    sleepMs(500);
    auto stock2 = factory->get("MS");
    printf("%ld: stock2 %p\n", std::this_thread::get_id(), stock2.get());
    if (stock != stock2)
    {
        printf("WARNING: stock != stock2\n");
    }
}

int main()
{
    StockFactory factory;
    std::thread thr(threadB,&factory);
    {
        auto stock = factory.get("MS");
        printf("%ld: stock %p\n", std::this_thread::get_id(), stock.get());
    }
    thr.join();

}