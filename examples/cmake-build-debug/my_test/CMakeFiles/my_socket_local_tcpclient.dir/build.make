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
CMAKE_SOURCE_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug

# Include any dependencies generated for this target.
include my_test/CMakeFiles/my_socket_local_tcpclient.dir/depend.make

# Include the progress variables for this target.
include my_test/CMakeFiles/my_socket_local_tcpclient.dir/progress.make

# Include the compile flags for this target's objects.
include my_test/CMakeFiles/my_socket_local_tcpclient.dir/flags.make

my_test/CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.o: my_test/CMakeFiles/my_socket_local_tcpclient.dir/flags.make
my_test/CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.o: ../my_test/my_socket_local_tcpclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_test/CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_local_tcpclient.cpp

my_test/CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_local_tcpclient.cpp > CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.i

my_test/CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_local_tcpclient.cpp -o CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.s

# Object files for target my_socket_local_tcpclient
my_socket_local_tcpclient_OBJECTS = \
"CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.o"

# External object files for target my_socket_local_tcpclient
my_socket_local_tcpclient_EXTERNAL_OBJECTS =

my_test/my_socket_local_tcpclient: my_test/CMakeFiles/my_socket_local_tcpclient.dir/my_socket_local_tcpclient.o
my_test/my_socket_local_tcpclient: my_test/CMakeFiles/my_socket_local_tcpclient.dir/build.make
my_test/my_socket_local_tcpclient: my_test/CMakeFiles/my_socket_local_tcpclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable my_socket_local_tcpclient"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_socket_local_tcpclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_test/CMakeFiles/my_socket_local_tcpclient.dir/build: my_test/my_socket_local_tcpclient

.PHONY : my_test/CMakeFiles/my_socket_local_tcpclient.dir/build

my_test/CMakeFiles/my_socket_local_tcpclient.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test && $(CMAKE_COMMAND) -P CMakeFiles/my_socket_local_tcpclient.dir/cmake_clean.cmake
.PHONY : my_test/CMakeFiles/my_socket_local_tcpclient.dir/clean

my_test/CMakeFiles/my_socket_local_tcpclient.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test/CMakeFiles/my_socket_local_tcpclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_test/CMakeFiles/my_socket_local_tcpclient.dir/depend

