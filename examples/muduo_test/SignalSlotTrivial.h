//
// Created by root on 1/1/20.
//

#ifndef MUDUO_SIGNALSLOTTRIVIAL_H
#define MUDUO_SIGNALSLOTTRIVIAL_H

#include <memory>
#include <vector>
#include <iostream>
#include <functional>
template<typename Signature>
class SignalTrivial;

template <typename RET, typename... ARGS>
class SignalTrivial<RET(ARGS...)>
{
public:
    typedef std::function<void (ARGS...)> Functor;

    void connect(Functor&& func)
    {
        functors_.push_back(std::forward<Functor>(func));
    }

    void call(ARGS &&... args)
    {
        // gcc 4.6 supports
        //for (const Functor& f: functors_)
        typename std::vector<Functor>::iterator it = functors_.begin();
        for (; it != functors_.end(); ++it)
        {
            (*it)(args...);
        }
    }


private:
    std::vector<Functor> functors_;
};


#endif //MUDUO_SIGNALSLOTTRIVIAL_H
