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
include netty/uptime/CMakeFiles/netty_uptime.dir/depend.make

# Include the progress variables for this target.
include netty/uptime/CMakeFiles/netty_uptime.dir/progress.make

# Include the compile flags for this target's objects.
include netty/uptime/CMakeFiles/netty_uptime.dir/flags.make

netty/uptime/CMakeFiles/netty_uptime.dir/uptime.o: netty/uptime/CMakeFiles/netty_uptime.dir/flags.make
netty/uptime/CMakeFiles/netty_uptime.dir/uptime.o: ../netty/uptime/uptime.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object netty/uptime/CMakeFiles/netty_uptime.dir/uptime.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/netty_uptime.dir/uptime.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/netty/uptime/uptime.cc

netty/uptime/CMakeFiles/netty_uptime.dir/uptime.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/netty_uptime.dir/uptime.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/netty/uptime/uptime.cc > CMakeFiles/netty_uptime.dir/uptime.i

netty/uptime/CMakeFiles/netty_uptime.dir/uptime.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/netty_uptime.dir/uptime.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/netty/uptime/uptime.cc -o CMakeFiles/netty_uptime.dir/uptime.s

# Object files for target netty_uptime
netty_uptime_OBJECTS = \
"CMakeFiles/netty_uptime.dir/uptime.o"

# External object files for target netty_uptime
netty_uptime_EXTERNAL_OBJECTS =

netty/uptime/netty_uptime: netty/uptime/CMakeFiles/netty_uptime.dir/uptime.o
netty/uptime/netty_uptime: netty/uptime/CMakeFiles/netty_uptime.dir/build.make
netty/uptime/netty_uptime: netty/uptime/CMakeFiles/netty_uptime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable netty_uptime"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/netty_uptime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
netty/uptime/CMakeFiles/netty_uptime.dir/build: netty/uptime/netty_uptime

.PHONY : netty/uptime/CMakeFiles/netty_uptime.dir/build

netty/uptime/CMakeFiles/netty_uptime.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime && $(CMAKE_COMMAND) -P CMakeFiles/netty_uptime.dir/cmake_clean.cmake
.PHONY : netty/uptime/CMakeFiles/netty_uptime.dir/clean

netty/uptime/CMakeFiles/netty_uptime.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/netty/uptime /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime/CMakeFiles/netty_uptime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : netty/uptime/CMakeFiles/netty_uptime.dir/depend
