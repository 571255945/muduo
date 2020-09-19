 cmake_minimum_required(VERSION 3.14)
#include_directories(/home/yuanye/WorkSpace/Git/My_Github/muduo)
 add_executable(test_racecondition test.cpp)
 add_executable(objectpool objectpool.cpp)
 add_executable(matrix_test matrix_test.cpp)

 find_package(Threads REQUIRED)
 target_link_libraries(test_racecondition Threads::Threads)
 target_link_libraries(objectpool Threads::Threads)
 target_link_libraries(matrix_test Threads::Threads)

 add_executable(signaltest signaltest.cpp SignalSlotTrivial.h SignalSlot.h)


 target_link_libraries(test_racecondition muduo_net)
 target_link_libraries(test_racecondition muduo_base)




