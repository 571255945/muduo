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
include CMakeFiles/my_socket_batchwrite_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/my_socket_batchwrite_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_socket_batchwrite_client.dir/flags.make

CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.o: CMakeFiles/my_socket_batchwrite_client.dir/flags.make
CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.o: ../my_socket_batchwrite_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_batchwrite_client.cpp

CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_batchwrite_client.cpp > CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.i

CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my_socket_batchwrite_client.cpp -o CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.s

# Object files for target my_socket_batchwrite_client
my_socket_batchwrite_client_OBJECTS = \
"CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.o"

# External object files for target my_socket_batchwrite_client
my_socket_batchwrite_client_EXTERNAL_OBJECTS =

my_socket_batchwrite_client: CMakeFiles/my_socket_batchwrite_client.dir/my_socket_batchwrite_client.o
my_socket_batchwrite_client: CMakeFiles/my_socket_batchwrite_client.dir/build.make
my_socket_batchwrite_client: CMakeFiles/my_socket_batchwrite_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable my_socket_batchwrite_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_socket_batchwrite_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_socket_batchwrite_client.dir/build: my_socket_batchwrite_client

.PHONY : CMakeFiles/my_socket_batchwrite_client.dir/build

CMakeFiles/my_socket_batchwrite_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_socket_batchwrite_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_socket_batchwrite_client.dir/clean

CMakeFiles/my_socket_batchwrite_client.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles/my_socket_batchwrite_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_socket_batchwrite_client.dir/depend

