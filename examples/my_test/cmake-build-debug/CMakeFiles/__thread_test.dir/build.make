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
include CMakeFiles/__thread_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/__thread_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/__thread_test.dir/flags.make

CMakeFiles/__thread_test.dir/my__thread_test.cpp.o: CMakeFiles/__thread_test.dir/flags.make
CMakeFiles/__thread_test.dir/my__thread_test.cpp.o: ../my__thread_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/__thread_test.dir/my__thread_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/__thread_test.dir/my__thread_test.cpp.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my__thread_test.cpp

CMakeFiles/__thread_test.dir/my__thread_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__thread_test.dir/my__thread_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my__thread_test.cpp > CMakeFiles/__thread_test.dir/my__thread_test.cpp.i

CMakeFiles/__thread_test.dir/my__thread_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__thread_test.dir/my__thread_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/my__thread_test.cpp -o CMakeFiles/__thread_test.dir/my__thread_test.cpp.s

# Object files for target __thread_test
__thread_test_OBJECTS = \
"CMakeFiles/__thread_test.dir/my__thread_test.cpp.o"

# External object files for target __thread_test
__thread_test_EXTERNAL_OBJECTS =

__thread_test: CMakeFiles/__thread_test.dir/my__thread_test.cpp.o
__thread_test: CMakeFiles/__thread_test.dir/build.make
__thread_test: CMakeFiles/__thread_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable __thread_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__thread_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/__thread_test.dir/build: __thread_test

.PHONY : CMakeFiles/__thread_test.dir/build

CMakeFiles/__thread_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/__thread_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/__thread_test.dir/clean

CMakeFiles/__thread_test.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/my_test/cmake-build-debug/CMakeFiles/__thread_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/__thread_test.dir/depend

