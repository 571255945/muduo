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
include protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/depend.make

# Include the progress variables for this target.
include protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/progress.make

# Include the compile flags for this target's objects.
include protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/flags.make

protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/server.o: protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/flags.make
protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/server.o: ../protobuf/rpc/server.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/server.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/rpc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protobuf_rpc_sudoku_server.dir/server.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/protobuf/rpc/server.cc

protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/server.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protobuf_rpc_sudoku_server.dir/server.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/protobuf/rpc/server.cc > CMakeFiles/protobuf_rpc_sudoku_server.dir/server.i

protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/server.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protobuf_rpc_sudoku_server.dir/server.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/protobuf/rpc/server.cc -o CMakeFiles/protobuf_rpc_sudoku_server.dir/server.s

# Object files for target protobuf_rpc_sudoku_server
protobuf_rpc_sudoku_server_OBJECTS = \
"CMakeFiles/protobuf_rpc_sudoku_server.dir/server.o"

# External object files for target protobuf_rpc_sudoku_server
protobuf_rpc_sudoku_server_EXTERNAL_OBJECTS =

protobuf/rpc/protobuf_rpc_sudoku_server: protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/server.o
protobuf/rpc/protobuf_rpc_sudoku_server: protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/build.make
protobuf/rpc/protobuf_rpc_sudoku_server: protobuf/rpc/libsudoku_proto.a
protobuf/rpc/protobuf_rpc_sudoku_server: protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable protobuf_rpc_sudoku_server"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/rpc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/protobuf_rpc_sudoku_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/build: protobuf/rpc/protobuf_rpc_sudoku_server

.PHONY : protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/build

protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/rpc && $(CMAKE_COMMAND) -P CMakeFiles/protobuf_rpc_sudoku_server.dir/cmake_clean.cmake
.PHONY : protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/clean

protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/protobuf/rpc /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/rpc /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : protobuf/rpc/CMakeFiles/protobuf_rpc_sudoku_server.dir/depend

