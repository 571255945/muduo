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
include examples/twisted/finger/CMakeFiles/twisted_finger04.dir/depend.make

# Include the progress variables for this target.
include examples/twisted/finger/CMakeFiles/twisted_finger04.dir/progress.make

# Include the compile flags for this target's objects.
include examples/twisted/finger/CMakeFiles/twisted_finger04.dir/flags.make

examples/twisted/finger/CMakeFiles/twisted_finger04.dir/finger04.cc.o: examples/twisted/finger/CMakeFiles/twisted_finger04.dir/flags.make
examples/twisted/finger/CMakeFiles/twisted_finger04.dir/finger04.cc.o: ../examples/twisted/finger/finger04.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/twisted/finger/CMakeFiles/twisted_finger04.dir/finger04.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/twisted/finger && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/twisted_finger04.dir/finger04.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/twisted/finger/finger04.cc

examples/twisted/finger/CMakeFiles/twisted_finger04.dir/finger04.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/twisted_finger04.dir/finger04.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/twisted/finger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/twisted/finger/finger04.cc > CMakeFiles/twisted_finger04.dir/finger04.cc.i

examples/twisted/finger/CMakeFiles/twisted_finger04.dir/finger04.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/twisted_finger04.dir/finger04.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/twisted/finger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/twisted/finger/finger04.cc -o CMakeFiles/twisted_finger04.dir/finger04.cc.s

# Object files for target twisted_finger04
twisted_finger04_OBJECTS = \
"CMakeFiles/twisted_finger04.dir/finger04.cc.o"

# External object files for target twisted_finger04
twisted_finger04_EXTERNAL_OBJECTS =

bin/twisted_finger04: examples/twisted/finger/CMakeFiles/twisted_finger04.dir/finger04.cc.o
bin/twisted_finger04: examples/twisted/finger/CMakeFiles/twisted_finger04.dir/build.make
bin/twisted_finger04: lib/libmuduo_net.a
bin/twisted_finger04: lib/libmuduo_base.a
bin/twisted_finger04: examples/twisted/finger/CMakeFiles/twisted_finger04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/twisted_finger04"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/twisted/finger && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/twisted_finger04.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/twisted/finger/CMakeFiles/twisted_finger04.dir/build: bin/twisted_finger04

.PHONY : examples/twisted/finger/CMakeFiles/twisted_finger04.dir/build

examples/twisted/finger/CMakeFiles/twisted_finger04.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/twisted/finger && $(CMAKE_COMMAND) -P CMakeFiles/twisted_finger04.dir/cmake_clean.cmake
.PHONY : examples/twisted/finger/CMakeFiles/twisted_finger04.dir/clean

examples/twisted/finger/CMakeFiles/twisted_finger04.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/twisted/finger /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/twisted/finger /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/twisted/finger/CMakeFiles/twisted_finger04.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/twisted/finger/CMakeFiles/twisted_finger04.dir/depend

