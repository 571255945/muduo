# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/yuanye/Downloads/clion-2019-1-4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/yuanye/Downloads/clion-2019-1-4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/my_socket_reactor_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/my_socket_reactor_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_socket_reactor_server.dir/flags.make

CMakeFiles/my_socket_reactor_server.dir/lib/log.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/log.o: ../lib/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/log.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/log.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/log.c

CMakeFiles/my_socket_reactor_server.dir/lib/log.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/log.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/log.c > CMakeFiles/my_socket_reactor_server.dir/lib/log.i

CMakeFiles/my_socket_reactor_server.dir/lib/log.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/log.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/log.c -o CMakeFiles/my_socket_reactor_server.dir/lib/log.s

CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.o: ../lib/sock_ntop.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/sock_ntop.c

CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/sock_ntop.c > CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.i

CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/sock_ntop.c -o CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.s

CMakeFiles/my_socket_reactor_server.dir/lib/read.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/read.o: ../lib/read.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/read.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/read.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/read.c

CMakeFiles/my_socket_reactor_server.dir/lib/read.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/read.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/read.c > CMakeFiles/my_socket_reactor_server.dir/lib/read.i

CMakeFiles/my_socket_reactor_server.dir/lib/read.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/read.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/read.c -o CMakeFiles/my_socket_reactor_server.dir/lib/read.s

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.o: ../lib/tcp_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_server.c

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_server.c > CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.i

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_server.c -o CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.s

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.o: ../lib/tcp_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_client.c

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_client.c > CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.i

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_client.c -o CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.s

CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.o: ../lib/event_loop.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/event_loop.c

CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/event_loop.c > CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.i

CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/event_loop.c -o CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.s

CMakeFiles/my_socket_reactor_server.dir/lib/channel.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/channel.o: ../lib/channel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/channel.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/channel.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/channel.c

CMakeFiles/my_socket_reactor_server.dir/lib/channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/channel.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/channel.c > CMakeFiles/my_socket_reactor_server.dir/lib/channel.i

CMakeFiles/my_socket_reactor_server.dir/lib/channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/channel.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/channel.c -o CMakeFiles/my_socket_reactor_server.dir/lib/channel.s

CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.o: ../lib/acceptor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/acceptor.c

CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/acceptor.c > CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.i

CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/acceptor.c -o CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.s

CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.o: ../lib/channel_map.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/channel_map.c

CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/channel_map.c > CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.i

CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/channel_map.c -o CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.s

CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.o: ../lib/poll_dispatcher.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/poll_dispatcher.c

CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/poll_dispatcher.c > CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.i

CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/poll_dispatcher.c -o CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.s

CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.o: ../lib/thread_pool.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/thread_pool.c

CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/thread_pool.c > CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.i

CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/thread_pool.c -o CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.s

CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.o: ../lib/event_loop_thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/event_loop_thread.c

CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/event_loop_thread.c > CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.i

CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/event_loop_thread.c -o CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.s

CMakeFiles/my_socket_reactor_server.dir/lib/utils.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/utils.o: ../lib/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/utils.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/utils.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/utils.c

CMakeFiles/my_socket_reactor_server.dir/lib/utils.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/utils.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/utils.c > CMakeFiles/my_socket_reactor_server.dir/lib/utils.i

CMakeFiles/my_socket_reactor_server.dir/lib/utils.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/utils.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/utils.c -o CMakeFiles/my_socket_reactor_server.dir/lib/utils.s

CMakeFiles/my_socket_reactor_server.dir/lib/buffer.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/buffer.o: ../lib/buffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/buffer.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/buffer.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/buffer.c

CMakeFiles/my_socket_reactor_server.dir/lib/buffer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/buffer.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/buffer.c > CMakeFiles/my_socket_reactor_server.dir/lib/buffer.i

CMakeFiles/my_socket_reactor_server.dir/lib/buffer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/buffer.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/buffer.c -o CMakeFiles/my_socket_reactor_server.dir/lib/buffer.s

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.o: ../lib/tcp_connection.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_connection.c

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_connection.c > CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.i

CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/tcp_connection.c -o CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.s

CMakeFiles/my_socket_reactor_server.dir/lib/http_server.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/http_server.o: ../lib/http_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/http_server.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/http_server.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_server.c

CMakeFiles/my_socket_reactor_server.dir/lib/http_server.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/http_server.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_server.c > CMakeFiles/my_socket_reactor_server.dir/lib/http_server.i

CMakeFiles/my_socket_reactor_server.dir/lib/http_server.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/http_server.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_server.c -o CMakeFiles/my_socket_reactor_server.dir/lib/http_server.s

CMakeFiles/my_socket_reactor_server.dir/lib/http_request.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/http_request.o: ../lib/http_request.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/http_request.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/http_request.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_request.c

CMakeFiles/my_socket_reactor_server.dir/lib/http_request.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/http_request.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_request.c > CMakeFiles/my_socket_reactor_server.dir/lib/http_request.i

CMakeFiles/my_socket_reactor_server.dir/lib/http_request.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/http_request.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_request.c -o CMakeFiles/my_socket_reactor_server.dir/lib/http_request.s

CMakeFiles/my_socket_reactor_server.dir/lib/http_response.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/lib/http_response.o: ../lib/http_response.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/my_socket_reactor_server.dir/lib/http_response.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/lib/http_response.o   -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_response.c

CMakeFiles/my_socket_reactor_server.dir/lib/http_response.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_socket_reactor_server.dir/lib/http_response.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_response.c > CMakeFiles/my_socket_reactor_server.dir/lib/http_response.i

CMakeFiles/my_socket_reactor_server.dir/lib/http_response.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_socket_reactor_server.dir/lib/http_response.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/lib/http_response.c -o CMakeFiles/my_socket_reactor_server.dir/lib/http_response.s

CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.o: CMakeFiles/my_socket_reactor_server.dir/flags.make
CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.o: ../my_socket_reactor_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_reactor_server.cpp

CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_reactor_server.cpp > CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.i

CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_reactor_server.cpp -o CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.s

# Object files for target my_socket_reactor_server
my_socket_reactor_server_OBJECTS = \
"CMakeFiles/my_socket_reactor_server.dir/lib/log.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/read.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/channel.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/utils.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/buffer.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/http_server.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/http_request.o" \
"CMakeFiles/my_socket_reactor_server.dir/lib/http_response.o" \
"CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.o"

# External object files for target my_socket_reactor_server
my_socket_reactor_server_EXTERNAL_OBJECTS =

my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/log.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/sock_ntop.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/read.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/tcp_server.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/tcp_client.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/event_loop.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/channel.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/acceptor.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/channel_map.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/poll_dispatcher.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/thread_pool.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/event_loop_thread.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/utils.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/buffer.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/tcp_connection.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/http_server.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/http_request.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/lib/http_response.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/my_socket_reactor_server.o
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/build.make
my_socket_reactor_server: CMakeFiles/my_socket_reactor_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX executable my_socket_reactor_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_socket_reactor_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_socket_reactor_server.dir/build: my_socket_reactor_server

.PHONY : CMakeFiles/my_socket_reactor_server.dir/build

CMakeFiles/my_socket_reactor_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_socket_reactor_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_socket_reactor_server.dir/clean

CMakeFiles/my_socket_reactor_server.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles/my_socket_reactor_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_socket_reactor_server.dir/depend

