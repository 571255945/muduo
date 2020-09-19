add_executable(simple_chargen chargen/chargen.cc chargen/main.cc)
target_link_libraries(simple_chargen muduo_net)

add_executable(simple_daytime daytime/daytime.cc daytime/main.cc)
target_link_libraries(simple_daytime muduo_net)

add_executable(simple_discard discard/discard.cc discard/main.cc)
target_link_libraries(simple_discard muduo_net)

add_executable(simple_echo echo/echo.cc echo/main.cc)
target_link_libraries(simple_echo muduo_net)

add_executable(simple_time time/time.cc time/main.cc)
target_link_libraries(simple_time muduo_net)

#test yuan
add_executable(my_echo my_echo_test/my_echo.cpp my_echo_test/my_echo_main.cpp ../muduo_test/test.cpp)
target_link_libraries(my_echo muduo_net)

add_executable(simple_allinone
  allinone/allinone.cc
  chargen/chargen.cc
  daytime/daytime.cc
  discard/discard.cc
  echo/echo.cc
  time/time.cc
  )
target_link_libraries(simple_allinone muduo_net)

#include_directories(/home/yuanye/WorkSpace/Git/My_Github/muduo)
#include_directories(/home/yuanye/WorkSpace/Git)
#include_directories(${Boost_INCLUDE_DIRS})
#include_directories(${PROJECT_SOURCE_DIR})

add_executable(simple_timeclient timeclient/timeclient.cc)
target_link_libraries(simple_timeclient muduo_net)

add_executable(simple_chargenclient chargenclient/chargenclient.cc)
target_link_libraries(simple_chargenclient muduo_net)

add_executable(simple_eventloop01
        eventloop01/eventloop01.cpp
        eventloop01/test.cpp)
target_link_libraries(simple_eventloop01 muduo_net muduo_base)


add_executable(simple_eventloop02
        eventloop02/Channel.cc
        eventloop02/EventLoop.cc
        eventloop02/Poller.cc
        eventloop02/main.cpp)
target_link_libraries(simple_eventloop02 muduo_net muduo_base)


add_executable(simple_eventloop03
        eventloop03/Channel.cc
        eventloop03/EventLoop.cc
        eventloop03/Poller.cc
        eventloop03/Timer.cc
        eventloop03/TimerQueue.cc
        eventloop03/TimerId.h
        eventloop03/EventLoopThread.cc
        eventloop03/main.cpp)
target_link_libraries(simple_eventloop03 muduo_net muduo_base)