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
CMAKE_SOURCE_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/muduo_net.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/muduo_net.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/muduo_net.dir/flags.make

CMakeFiles/muduo_net.dir/Acceptor.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/Acceptor.o: ../Acceptor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/muduo_net.dir/Acceptor.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/Acceptor.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Acceptor.cc

CMakeFiles/muduo_net.dir/Acceptor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/Acceptor.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Acceptor.cc > CMakeFiles/muduo_net.dir/Acceptor.i

CMakeFiles/muduo_net.dir/Acceptor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/Acceptor.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Acceptor.cc -o CMakeFiles/muduo_net.dir/Acceptor.s

CMakeFiles/muduo_net.dir/Buffer.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/Buffer.o: ../Buffer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/muduo_net.dir/Buffer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/Buffer.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Buffer.cc

CMakeFiles/muduo_net.dir/Buffer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/Buffer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Buffer.cc > CMakeFiles/muduo_net.dir/Buffer.i

CMakeFiles/muduo_net.dir/Buffer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/Buffer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Buffer.cc -o CMakeFiles/muduo_net.dir/Buffer.s

CMakeFiles/muduo_net.dir/Channel.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/Channel.o: ../Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/muduo_net.dir/Channel.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/Channel.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Channel.cc

CMakeFiles/muduo_net.dir/Channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/Channel.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Channel.cc > CMakeFiles/muduo_net.dir/Channel.i

CMakeFiles/muduo_net.dir/Channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/Channel.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Channel.cc -o CMakeFiles/muduo_net.dir/Channel.s

CMakeFiles/muduo_net.dir/Connector.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/Connector.o: ../Connector.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/muduo_net.dir/Connector.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/Connector.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Connector.cc

CMakeFiles/muduo_net.dir/Connector.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/Connector.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Connector.cc > CMakeFiles/muduo_net.dir/Connector.i

CMakeFiles/muduo_net.dir/Connector.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/Connector.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Connector.cc -o CMakeFiles/muduo_net.dir/Connector.s

CMakeFiles/muduo_net.dir/EventLoop.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/EventLoop.o: ../EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/muduo_net.dir/EventLoop.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/EventLoop.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoop.cc

CMakeFiles/muduo_net.dir/EventLoop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/EventLoop.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoop.cc > CMakeFiles/muduo_net.dir/EventLoop.i

CMakeFiles/muduo_net.dir/EventLoop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/EventLoop.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoop.cc -o CMakeFiles/muduo_net.dir/EventLoop.s

CMakeFiles/muduo_net.dir/EventLoopThread.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/EventLoopThread.o: ../EventLoopThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/muduo_net.dir/EventLoopThread.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/EventLoopThread.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoopThread.cc

CMakeFiles/muduo_net.dir/EventLoopThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/EventLoopThread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoopThread.cc > CMakeFiles/muduo_net.dir/EventLoopThread.i

CMakeFiles/muduo_net.dir/EventLoopThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/EventLoopThread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoopThread.cc -o CMakeFiles/muduo_net.dir/EventLoopThread.s

CMakeFiles/muduo_net.dir/EventLoopThreadPool.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/EventLoopThreadPool.o: ../EventLoopThreadPool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/muduo_net.dir/EventLoopThreadPool.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/EventLoopThreadPool.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoopThreadPool.cc

CMakeFiles/muduo_net.dir/EventLoopThreadPool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/EventLoopThreadPool.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoopThreadPool.cc > CMakeFiles/muduo_net.dir/EventLoopThreadPool.i

CMakeFiles/muduo_net.dir/EventLoopThreadPool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/EventLoopThreadPool.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/EventLoopThreadPool.cc -o CMakeFiles/muduo_net.dir/EventLoopThreadPool.s

CMakeFiles/muduo_net.dir/InetAddress.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/InetAddress.o: ../InetAddress.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/muduo_net.dir/InetAddress.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/InetAddress.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/InetAddress.cc

CMakeFiles/muduo_net.dir/InetAddress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/InetAddress.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/InetAddress.cc > CMakeFiles/muduo_net.dir/InetAddress.i

CMakeFiles/muduo_net.dir/InetAddress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/InetAddress.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/InetAddress.cc -o CMakeFiles/muduo_net.dir/InetAddress.s

CMakeFiles/muduo_net.dir/Poller.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/Poller.o: ../Poller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/muduo_net.dir/Poller.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/Poller.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Poller.cc

CMakeFiles/muduo_net.dir/Poller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/Poller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Poller.cc > CMakeFiles/muduo_net.dir/Poller.i

CMakeFiles/muduo_net.dir/Poller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/Poller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Poller.cc -o CMakeFiles/muduo_net.dir/Poller.s

CMakeFiles/muduo_net.dir/poller/DefaultPoller.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/poller/DefaultPoller.o: ../poller/DefaultPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/muduo_net.dir/poller/DefaultPoller.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/poller/DefaultPoller.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/DefaultPoller.cc

CMakeFiles/muduo_net.dir/poller/DefaultPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/poller/DefaultPoller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/DefaultPoller.cc > CMakeFiles/muduo_net.dir/poller/DefaultPoller.i

CMakeFiles/muduo_net.dir/poller/DefaultPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/poller/DefaultPoller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/DefaultPoller.cc -o CMakeFiles/muduo_net.dir/poller/DefaultPoller.s

CMakeFiles/muduo_net.dir/poller/EPollPoller.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/poller/EPollPoller.o: ../poller/EPollPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/muduo_net.dir/poller/EPollPoller.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/poller/EPollPoller.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/EPollPoller.cc

CMakeFiles/muduo_net.dir/poller/EPollPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/poller/EPollPoller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/EPollPoller.cc > CMakeFiles/muduo_net.dir/poller/EPollPoller.i

CMakeFiles/muduo_net.dir/poller/EPollPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/poller/EPollPoller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/EPollPoller.cc -o CMakeFiles/muduo_net.dir/poller/EPollPoller.s

CMakeFiles/muduo_net.dir/poller/PollPoller.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/poller/PollPoller.o: ../poller/PollPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/muduo_net.dir/poller/PollPoller.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/poller/PollPoller.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/PollPoller.cc

CMakeFiles/muduo_net.dir/poller/PollPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/poller/PollPoller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/PollPoller.cc > CMakeFiles/muduo_net.dir/poller/PollPoller.i

CMakeFiles/muduo_net.dir/poller/PollPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/poller/PollPoller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/poller/PollPoller.cc -o CMakeFiles/muduo_net.dir/poller/PollPoller.s

CMakeFiles/muduo_net.dir/Socket.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/Socket.o: ../Socket.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/muduo_net.dir/Socket.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/Socket.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Socket.cc

CMakeFiles/muduo_net.dir/Socket.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/Socket.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Socket.cc > CMakeFiles/muduo_net.dir/Socket.i

CMakeFiles/muduo_net.dir/Socket.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/Socket.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Socket.cc -o CMakeFiles/muduo_net.dir/Socket.s

CMakeFiles/muduo_net.dir/SocketsOps.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/SocketsOps.o: ../SocketsOps.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/muduo_net.dir/SocketsOps.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/SocketsOps.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/SocketsOps.cc

CMakeFiles/muduo_net.dir/SocketsOps.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/SocketsOps.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/SocketsOps.cc > CMakeFiles/muduo_net.dir/SocketsOps.i

CMakeFiles/muduo_net.dir/SocketsOps.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/SocketsOps.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/SocketsOps.cc -o CMakeFiles/muduo_net.dir/SocketsOps.s

CMakeFiles/muduo_net.dir/TcpClient.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/TcpClient.o: ../TcpClient.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/muduo_net.dir/TcpClient.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/TcpClient.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpClient.cc

CMakeFiles/muduo_net.dir/TcpClient.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/TcpClient.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpClient.cc > CMakeFiles/muduo_net.dir/TcpClient.i

CMakeFiles/muduo_net.dir/TcpClient.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/TcpClient.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpClient.cc -o CMakeFiles/muduo_net.dir/TcpClient.s

CMakeFiles/muduo_net.dir/TcpConnection.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/TcpConnection.o: ../TcpConnection.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/muduo_net.dir/TcpConnection.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/TcpConnection.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpConnection.cc

CMakeFiles/muduo_net.dir/TcpConnection.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/TcpConnection.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpConnection.cc > CMakeFiles/muduo_net.dir/TcpConnection.i

CMakeFiles/muduo_net.dir/TcpConnection.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/TcpConnection.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpConnection.cc -o CMakeFiles/muduo_net.dir/TcpConnection.s

CMakeFiles/muduo_net.dir/TcpServer.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/TcpServer.o: ../TcpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/muduo_net.dir/TcpServer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/TcpServer.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpServer.cc

CMakeFiles/muduo_net.dir/TcpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/TcpServer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpServer.cc > CMakeFiles/muduo_net.dir/TcpServer.i

CMakeFiles/muduo_net.dir/TcpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/TcpServer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TcpServer.cc -o CMakeFiles/muduo_net.dir/TcpServer.s

CMakeFiles/muduo_net.dir/Timer.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/Timer.o: ../Timer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/muduo_net.dir/Timer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/Timer.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Timer.cc

CMakeFiles/muduo_net.dir/Timer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/Timer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Timer.cc > CMakeFiles/muduo_net.dir/Timer.i

CMakeFiles/muduo_net.dir/Timer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/Timer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/Timer.cc -o CMakeFiles/muduo_net.dir/Timer.s

CMakeFiles/muduo_net.dir/TimerQueue.o: CMakeFiles/muduo_net.dir/flags.make
CMakeFiles/muduo_net.dir/TimerQueue.o: ../TimerQueue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/muduo_net.dir/TimerQueue.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo_net.dir/TimerQueue.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TimerQueue.cc

CMakeFiles/muduo_net.dir/TimerQueue.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_net.dir/TimerQueue.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TimerQueue.cc > CMakeFiles/muduo_net.dir/TimerQueue.i

CMakeFiles/muduo_net.dir/TimerQueue.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_net.dir/TimerQueue.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/TimerQueue.cc -o CMakeFiles/muduo_net.dir/TimerQueue.s

# Object files for target muduo_net
muduo_net_OBJECTS = \
"CMakeFiles/muduo_net.dir/Acceptor.o" \
"CMakeFiles/muduo_net.dir/Buffer.o" \
"CMakeFiles/muduo_net.dir/Channel.o" \
"CMakeFiles/muduo_net.dir/Connector.o" \
"CMakeFiles/muduo_net.dir/EventLoop.o" \
"CMakeFiles/muduo_net.dir/EventLoopThread.o" \
"CMakeFiles/muduo_net.dir/EventLoopThreadPool.o" \
"CMakeFiles/muduo_net.dir/InetAddress.o" \
"CMakeFiles/muduo_net.dir/Poller.o" \
"CMakeFiles/muduo_net.dir/poller/DefaultPoller.o" \
"CMakeFiles/muduo_net.dir/poller/EPollPoller.o" \
"CMakeFiles/muduo_net.dir/poller/PollPoller.o" \
"CMakeFiles/muduo_net.dir/Socket.o" \
"CMakeFiles/muduo_net.dir/SocketsOps.o" \
"CMakeFiles/muduo_net.dir/TcpClient.o" \
"CMakeFiles/muduo_net.dir/TcpConnection.o" \
"CMakeFiles/muduo_net.dir/TcpServer.o" \
"CMakeFiles/muduo_net.dir/Timer.o" \
"CMakeFiles/muduo_net.dir/TimerQueue.o"

# External object files for target muduo_net
muduo_net_EXTERNAL_OBJECTS =

libmuduo_net.a: CMakeFiles/muduo_net.dir/Acceptor.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/Buffer.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/Channel.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/Connector.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/EventLoop.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/EventLoopThread.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/EventLoopThreadPool.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/InetAddress.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/Poller.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/poller/DefaultPoller.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/poller/EPollPoller.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/poller/PollPoller.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/Socket.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/SocketsOps.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/TcpClient.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/TcpConnection.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/TcpServer.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/Timer.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/TimerQueue.o
libmuduo_net.a: CMakeFiles/muduo_net.dir/build.make
libmuduo_net.a: CMakeFiles/muduo_net.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX static library libmuduo_net.a"
	$(CMAKE_COMMAND) -P CMakeFiles/muduo_net.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/muduo_net.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/muduo_net.dir/build: libmuduo_net.a

.PHONY : CMakeFiles/muduo_net.dir/build

CMakeFiles/muduo_net.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/muduo_net.dir/cmake_clean.cmake
.PHONY : CMakeFiles/muduo_net.dir/clean

CMakeFiles/muduo_net.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/net/cmake-build-debug/CMakeFiles/muduo_net.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/muduo_net.dir/depend
