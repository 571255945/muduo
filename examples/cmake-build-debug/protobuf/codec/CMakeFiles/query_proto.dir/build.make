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
include protobuf/codec/CMakeFiles/query_proto.dir/depend.make

# Include the progress variables for this target.
include protobuf/codec/CMakeFiles/query_proto.dir/progress.make

# Include the compile flags for this target's objects.
include protobuf/codec/CMakeFiles/query_proto.dir/flags.make

protobuf/codec/query.pb.cc: ../protobuf/codec/query.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating query.pb.cc, query.pb.h"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec && protoc --cpp_out . /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/protobuf/codec/query.proto -I/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/protobuf/codec

protobuf/codec/query.pb.h: protobuf/codec/query.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate protobuf/codec/query.pb.h

protobuf/codec/CMakeFiles/query_proto.dir/query.pb.o: protobuf/codec/CMakeFiles/query_proto.dir/flags.make
protobuf/codec/CMakeFiles/query_proto.dir/query.pb.o: protobuf/codec/query.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object protobuf/codec/CMakeFiles/query_proto.dir/query.pb.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-conversion -Wno-shadow -o CMakeFiles/query_proto.dir/query.pb.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec/query.pb.cc

protobuf/codec/CMakeFiles/query_proto.dir/query.pb.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/query_proto.dir/query.pb.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-conversion -Wno-shadow -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec/query.pb.cc > CMakeFiles/query_proto.dir/query.pb.i

protobuf/codec/CMakeFiles/query_proto.dir/query.pb.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/query_proto.dir/query.pb.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-conversion -Wno-shadow -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec/query.pb.cc -o CMakeFiles/query_proto.dir/query.pb.s

# Object files for target query_proto
query_proto_OBJECTS = \
"CMakeFiles/query_proto.dir/query.pb.o"

# External object files for target query_proto
query_proto_EXTERNAL_OBJECTS =

protobuf/codec/libquery_proto.a: protobuf/codec/CMakeFiles/query_proto.dir/query.pb.o
protobuf/codec/libquery_proto.a: protobuf/codec/CMakeFiles/query_proto.dir/build.make
protobuf/codec/libquery_proto.a: protobuf/codec/CMakeFiles/query_proto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libquery_proto.a"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec && $(CMAKE_COMMAND) -P CMakeFiles/query_proto.dir/cmake_clean_target.cmake
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/query_proto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
protobuf/codec/CMakeFiles/query_proto.dir/build: protobuf/codec/libquery_proto.a

.PHONY : protobuf/codec/CMakeFiles/query_proto.dir/build

protobuf/codec/CMakeFiles/query_proto.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec && $(CMAKE_COMMAND) -P CMakeFiles/query_proto.dir/cmake_clean.cmake
.PHONY : protobuf/codec/CMakeFiles/query_proto.dir/clean

protobuf/codec/CMakeFiles/query_proto.dir/depend: protobuf/codec/query.pb.cc
protobuf/codec/CMakeFiles/query_proto.dir/depend: protobuf/codec/query.pb.h
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/protobuf/codec /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/protobuf/codec/CMakeFiles/query_proto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : protobuf/codec/CMakeFiles/query_proto.dir/depend

