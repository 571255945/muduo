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
CMAKE_SOURCE_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug

# Include any dependencies generated for this target.
include examples/simple/CMakeFiles/simple_eventloop03.dir/depend.make

# Include the progress variables for this target.
include examples/simple/CMakeFiles/simple_eventloop03.dir/progress.make

# Include the compile flags for this target's objects.
include examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.o: examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make
examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.o: ../examples/simple/eventloop03/Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Channel.cc

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Channel.cc > CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.i

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Channel.cc -o CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.s

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.o: examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make
examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.o: ../examples/simple/eventloop03/EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/EventLoop.cc

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/EventLoop.cc > CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.i

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/EventLoop.cc -o CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.s

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.o: examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make
examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.o: ../examples/simple/eventloop03/Poller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Poller.cc

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Poller.cc > CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.i

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Poller.cc -o CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.s

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.o: examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make
examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.o: ../examples/simple/eventloop03/Timer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Timer.cc

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Timer.cc > CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.i

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/Timer.cc -o CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.s

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.o: examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make
examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.o: ../examples/simple/eventloop03/TimerQueue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/TimerQueue.cc

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/TimerQueue.cc > CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.i

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/TimerQueue.cc -o CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.s

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.o: examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make
examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.o: ../examples/simple/eventloop03/EventLoopThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/EventLoopThread.cc

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/EventLoopThread.cc > CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.i

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/EventLoopThread.cc -o CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.s

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.o: examples/simple/CMakeFiles/simple_eventloop03.dir/flags.make
examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.o: ../examples/simple/eventloop03/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/main.cpp

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/main.cpp > CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.i

examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/eventloop03/main.cpp -o CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.s

# Object files for target simple_eventloop03
simple_eventloop03_OBJECTS = \
"CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.o" \
"CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.o" \
"CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.o" \
"CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.o" \
"CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.o" \
"CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.o" \
"CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.o"

# External object files for target simple_eventloop03
simple_eventloop03_EXTERNAL_OBJECTS =

bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Channel.cc.o
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoop.cc.o
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Poller.cc.o
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/Timer.cc.o
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/TimerQueue.cc.o
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/EventLoopThread.cc.o
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/eventloop03/main.cpp.o
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/build.make
bin/simple_eventloop03: lib/libmuduo_net.a
bin/simple_eventloop03: lib/libmuduo_base.a
bin/simple_eventloop03: examples/simple/CMakeFiles/simple_eventloop03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ../../bin/simple_eventloop03"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_eventloop03.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/simple/CMakeFiles/simple_eventloop03.dir/build: bin/simple_eventloop03

.PHONY : examples/simple/CMakeFiles/simple_eventloop03.dir/build

examples/simple/CMakeFiles/simple_eventloop03.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple && $(CMAKE_COMMAND) -P CMakeFiles/simple_eventloop03.dir/cmake_clean.cmake
.PHONY : examples/simple/CMakeFiles/simple_eventloop03.dir/clean

examples/simple/CMakeFiles/simple_eventloop03.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/simple/CMakeFiles/simple_eventloop03.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/simple/CMakeFiles/simple_eventloop03.dir/depend
