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
include examples/my_test/CMakeFiles/my_socket_poll_server.dir/depend.make

# Include the progress variables for this target.
include examples/my_test/CMakeFiles/my_socket_poll_server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/my_test/CMakeFiles/my_socket_poll_server.dir/flags.make

examples/my_test/CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.o: examples/my_test/CMakeFiles/my_socket_poll_server.dir/flags.make
examples/my_test/CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.o: ../examples/my_test/my_socket_poll_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/my_test/CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/my_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_poll_server.cpp

examples/my_test/CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/my_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_poll_server.cpp > CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.i

examples/my_test/CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/my_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_poll_server.cpp -o CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.s

# Object files for target my_socket_poll_server
my_socket_poll_server_OBJECTS = \
"CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.o"

# External object files for target my_socket_poll_server
my_socket_poll_server_EXTERNAL_OBJECTS =

bin/my_socket_poll_server: examples/my_test/CMakeFiles/my_socket_poll_server.dir/my_socket_poll_server.cpp.o
bin/my_socket_poll_server: examples/my_test/CMakeFiles/my_socket_poll_server.dir/build.make
bin/my_socket_poll_server: examples/my_test/CMakeFiles/my_socket_poll_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/my_socket_poll_server"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/my_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_socket_poll_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/my_test/CMakeFiles/my_socket_poll_server.dir/build: bin/my_socket_poll_server

.PHONY : examples/my_test/CMakeFiles/my_socket_poll_server.dir/build

examples/my_test/CMakeFiles/my_socket_poll_server.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/my_test && $(CMAKE_COMMAND) -P CMakeFiles/my_socket_poll_server.dir/cmake_clean.cmake
.PHONY : examples/my_test/CMakeFiles/my_socket_poll_server.dir/clean

examples/my_test/CMakeFiles/my_socket_poll_server.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/my_test/CMakeFiles/my_socket_poll_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/my_test/CMakeFiles/my_socket_poll_server.dir/depend
