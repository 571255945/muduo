
#support boost
find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})
find_library(BOOSTTEST_LIBRARY NAMES boost_unit_test_framework)
find_library(BOOSTPO_LIBRARY NAMES boost_program_options)
find_library(BOOSTSYSTEM_LIBRARY NAMES boost_system)

#reactor
if (EPOLL_EXISTS)
    set(rSRC
            lib/log.c
            lib/sock_ntop.c
            lib/read.c
            lib/tcp_server.c
            lib/tcp_client.c
            lib/event_loop.c
            lib/channel.c
            lib/acceptor.c
            lib/channel_map.c
            lib/poll_dispatcher.c
            lib/thread_pool.c
            lib/event_loop_thread.c
            lib/utils.c
            lib/epoll_dispatcher.c
            lib/buffer.c
            lib/tcp_connection.c
            lib/http_server.c
            lib/http_request.c
            lib/http_response.c
            my_socket_reactor_server.cpp
            )
else ()
    set(rSRC
            lib/log.c
            lib/sock_ntop.c
            lib/read.c
            lib/tcp_server.c
            lib/tcp_client.c
            lib/event_loop.c
            lib/channel.c
            lib/acceptor.c
            lib/channel_map.c
            lib/poll_dispatcher.c
            lib/thread_pool.c
            lib/event_loop_thread.c
            lib/utils.c
            lib/buffer.c
            lib/tcp_connection.c
            lib/http_server.c
            lib/http_request.c
            lib/http_response.c
            my_socket_reactor_server.cpp
            )
endif ()

add_executable(algorithm_test algorithm_test.cpp)

add_executable(my_socket_reactor_server ${rSRC})
target_link_libraries(my_socket_reactor_server pthread)
#add_executable(my_socket_reactor_server ${rSRC})

#方式1
add_executable(my_function_test my_function_test.cpp)
#target_link_libraries(my_function_tst muduo_net)

#方式2
set(SOURCE_FILES my__thread_test.cpp)
#add_executable(my__thread_test my__thread_test.cpp)
add_executable(my__thread_test ${SOURCE_FILES})

#解决undefined reference to `pthread_create'问题，
#问题原因 pthread库不是Linux系统默认的库
find_package(Threads REQUIRED)
target_link_libraries(my__thread_test Threads::Threads)

add_executable(my_socket_test01 my_socket_test01.cpp)

#Tcp test
add_executable(my_socket_server_tcp my_socket_server_tcp.cpp)
add_executable(my_socket_client_tcp my_socket_client_tcp.cpp)

# UDP test
add_executable(my_socket_server_udp my_socket_server_udp.cpp)
add_executable(my_socket_client_udp my_socket_client_udp.cpp)

#local test
add_executable(my_socket_local_tcpclient my_socket_local_tcpclient.cpp)
add_executable(my_socket_local_tcpserver my_socket_local_tcpserver.cpp)
add_executable(my_socket_local_udpserver my_socket_local_udpserver.cpp)
add_executable(my_socket_local_udpclient my_socket_local_udpclient.cpp)

#close shutdown test
add_executable(my_socket_close_shutdown_server my_socket_close_shutdown_server.cpp)
add_executable(my_socket_close_shutdown_client my_socket_close_shutdown_client.cpp)

#tcp keep_alive
add_executable(my_tcp_keep_alive_client my_tcp_keep_alive_client.cpp)
add_executable(my_tcp_keep_alive_server my_tcp_keep_alive_server.cpp)

#batch write
add_executable(my_socket_batchwrite_client my_socket_batchwrite_client.cpp)

#udp connect
add_executable(my_socket_udp_connect_client0 my_socket_udp_connect_client0.cpp)
add_executable(my_socket_udp_connect_client my_socket_udp_connect_client0.cpp)
add_executable(my_socket_udp_connect_server my_socket_udp_connect_server.cpp)

#common test
add_executable(my_common_test my_common_test.cpp)

#tcp server (address in use)
add_executable(my_socket_tcp_server_address_in_use my_socket_tcp_server_address_in_use.cpp)

#tcp stream test
add_executable(my_socket_tcp_stream_client my_socket_tcp_stream_client.cpp)
add_executable(my_socket_tcp_stream_server my_socket_tcp_stream_server.cpp)

#tcp exception
add_executable(my_socket_tcp_exception_client01 my_socket_tcp_exception_client01.cpp)
add_executable(my_socket_tcp_exception_server01 my_socket_tcp_exception_server01.cpp)

#home_work 1
add_executable(my_socket_homework_client my_socket_homework_client.cpp)
add_executable(my_socket_homework_server my_socket_homework_server.cpp)

#select
add_executable(my_socket_select_server my_socket_select_server.cpp)
add_executable(my_socket_select_client my_socket_select_client.cpp)

#poll
add_executable(my_socket_poll_server my_socket_poll_server.cpp)
add_executable(my_socket_poll_client my_socket_poll_client.cpp)

#nonblocking
add_executable(my_socket_nonblocking_IO_server my_socket_nonblocking_IO_server.cpp)

#epoll
add_executable(my_socket_epoll_server my_socket_epoll_server.cpp)

#multi_process
add_executable(my_socket_multi_process_server my_socket_multi_process_server.cpp)

#multi_thread
add_executable(my_socket_mutil_thread_server01 my_socket_mutil_thread_server01.cpp)
add_executable(my_socket_multi_thread_server02 my_socket_multi_thread_server02.cpp)
add_executable(my_copy_on_write my_copy_on_write.cpp)
#解决undefined reference to `pthread_create'问题，
#问题原因 pthread库不是Linux系统默认的库
#find_package(Threads REQUIRED)
target_link_libraries(my_socket_mutil_thread_server01 Threads::Threads)
target_link_libraries(my_socket_multi_thread_server02 Threads::Threads)
target_link_libraries(my_copy_on_write Threads::Threads)

#reactor
#set(rSRC
#    lib/buffer.h
#    lib/channel.c
#    lib/epoll_dispatcher.c
#    lib/poll_dispatcher.c
#    lib/event_loop.c
#    lib/log.c
#    lib/tcp_server.c
#    lib/acceptor.c
#        lib/channel_map.c
#        lib/
#    my_socket_reactor_server.cpp)


