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
include procmon/CMakeFiles/dummyload.dir/depend.make

# Include the progress variables for this target.
include procmon/CMakeFiles/dummyload.dir/progress.make

# Include the compile flags for this target's objects.
include procmon/CMakeFiles/dummyload.dir/flags.make

procmon/CMakeFiles/dummyload.dir/dummyload.o: procmon/CMakeFiles/dummyload.dir/flags.make
procmon/CMakeFiles/dummyload.dir/dummyload.o: ../procmon/dummyload.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object procmon/CMakeFiles/dummyload.dir/dummyload.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/procmon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dummyload.dir/dummyload.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/procmon/dummyload.cc

procmon/CMakeFiles/dummyload.dir/dummyload.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dummyload.dir/dummyload.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/procmon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/procmon/dummyload.cc > CMakeFiles/dummyload.dir/dummyload.i

procmon/CMakeFiles/dummyload.dir/dummyload.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dummyload.dir/dummyload.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/procmon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/procmon/dummyload.cc -o CMakeFiles/dummyload.dir/dummyload.s

# Object files for target dummyload
dummyload_OBJECTS = \
"CMakeFiles/dummyload.dir/dummyload.o"

# External object files for target dummyload
dummyload_EXTERNAL_OBJECTS =

procmon/dummyload: procmon/CMakeFiles/dummyload.dir/dummyload.o
procmon/dummyload: procmon/CMakeFiles/dummyload.dir/build.make
procmon/dummyload: procmon/CMakeFiles/dummyload.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dummyload"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/procmon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dummyload.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
procmon/CMakeFiles/dummyload.dir/build: procmon/dummyload

.PHONY : procmon/CMakeFiles/dummyload.dir/build

procmon/CMakeFiles/dummyload.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/procmon && $(CMAKE_COMMAND) -P CMakeFiles/dummyload.dir/cmake_clean.cmake
.PHONY : procmon/CMakeFiles/dummyload.dir/clean

procmon/CMakeFiles/dummyload.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/procmon /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/procmon /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/procmon/CMakeFiles/dummyload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : procmon/CMakeFiles/dummyload.dir/depend

