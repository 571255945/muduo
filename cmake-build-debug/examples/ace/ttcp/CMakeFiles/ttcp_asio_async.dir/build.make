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
include examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/depend.make

# Include the progress variables for this target.
include examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/flags.make

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.o: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/flags.make
examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.o: ../examples/ace/ttcp/ttcp_asio_async.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/ttcp_asio_async.cc

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/ttcp_asio_async.cc > CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.i

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/ttcp_asio_async.cc -o CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.s

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/common.cc.o: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/flags.make
examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/common.cc.o: ../examples/ace/ttcp/common.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/common.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ttcp_asio_async.dir/common.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/common.cc

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/common.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ttcp_asio_async.dir/common.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/common.cc > CMakeFiles/ttcp_asio_async.dir/common.cc.i

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/common.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ttcp_asio_async.dir/common.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/common.cc -o CMakeFiles/ttcp_asio_async.dir/common.cc.s

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/main.cc.o: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/flags.make
examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/main.cc.o: ../examples/ace/ttcp/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/main.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ttcp_asio_async.dir/main.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/main.cc

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ttcp_asio_async.dir/main.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/main.cc > CMakeFiles/ttcp_asio_async.dir/main.cc.i

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ttcp_asio_async.dir/main.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp/main.cc -o CMakeFiles/ttcp_asio_async.dir/main.cc.s

# Object files for target ttcp_asio_async
ttcp_asio_async_OBJECTS = \
"CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.o" \
"CMakeFiles/ttcp_asio_async.dir/common.cc.o" \
"CMakeFiles/ttcp_asio_async.dir/main.cc.o"

# External object files for target ttcp_asio_async
ttcp_asio_async_EXTERNAL_OBJECTS =

bin/ttcp_asio_async: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/ttcp_asio_async.cc.o
bin/ttcp_asio_async: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/common.cc.o
bin/ttcp_asio_async: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/main.cc.o
bin/ttcp_asio_async: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/build.make
bin/ttcp_asio_async: lib/libmuduo_base.a
bin/ttcp_asio_async: examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../bin/ttcp_asio_async"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ttcp_asio_async.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/build: bin/ttcp_asio_async

.PHONY : examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/build

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp && $(CMAKE_COMMAND) -P CMakeFiles/ttcp_asio_async.dir/cmake_clean.cmake
.PHONY : examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/clean

examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/ace/ttcp /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ace/ttcp/CMakeFiles/ttcp_asio_async.dir/depend
