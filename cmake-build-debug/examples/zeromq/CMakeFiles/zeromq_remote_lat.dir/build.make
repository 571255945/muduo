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
include examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/depend.make

# Include the progress variables for this target.
include examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/progress.make

# Include the compile flags for this target's objects.
include examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/flags.make

examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.o: examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/flags.make
examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.o: ../examples/zeromq/remote_lat.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/zeromq && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/zeromq/remote_lat.cc

examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/zeromq && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/zeromq/remote_lat.cc > CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.i

examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/zeromq && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/zeromq/remote_lat.cc -o CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.s

# Object files for target zeromq_remote_lat
zeromq_remote_lat_OBJECTS = \
"CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.o"

# External object files for target zeromq_remote_lat
zeromq_remote_lat_EXTERNAL_OBJECTS =

bin/zeromq_remote_lat: examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/remote_lat.cc.o
bin/zeromq_remote_lat: examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/build.make
bin/zeromq_remote_lat: lib/libmuduo_net.a
bin/zeromq_remote_lat: lib/libmuduo_base.a
bin/zeromq_remote_lat: examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/zeromq_remote_lat"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/zeromq && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zeromq_remote_lat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/build: bin/zeromq_remote_lat

.PHONY : examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/build

examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/zeromq && $(CMAKE_COMMAND) -P CMakeFiles/zeromq_remote_lat.dir/cmake_clean.cmake
.PHONY : examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/clean

examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/zeromq /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/zeromq /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/zeromq/CMakeFiles/zeromq_remote_lat.dir/depend

