 cmake_minimum_required(VERSION 3.14)
#include_directories(/home/yuanye/WorkSpace/Git/My_Github/muduo)
 add_executable(test_racecondition test.cpp)
 add_executable(objectpool objectpool.cpp)

 find_package(Threads REQUIRED)
 target_link_libraries(test_racecondition Threads::Threads)
 target_link_libraries(objectpool Threads::Threads)



 target_link_libraries(test_racecondition muduo_net)
 target_link_libraries(test_racecondition muduo_base)




