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
CMAKE_SOURCE_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/signaltest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/signaltest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/signaltest.dir/flags.make

CMakeFiles/signaltest.dir/signaltest.cpp.o: CMakeFiles/signaltest.dir/flags.make
CMakeFiles/signaltest.dir/signaltest.cpp.o: ../signaltest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/signaltest.dir/signaltest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/signaltest.dir/signaltest.cpp.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/signaltest.cpp

CMakeFiles/signaltest.dir/signaltest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/signaltest.dir/signaltest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/signaltest.cpp > CMakeFiles/signaltest.dir/signaltest.cpp.i

CMakeFiles/signaltest.dir/signaltest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/signaltest.dir/signaltest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/signaltest.cpp -o CMakeFiles/signaltest.dir/signaltest.cpp.s

# Object files for target signaltest
signaltest_OBJECTS = \
"CMakeFiles/signaltest.dir/signaltest.cpp.o"

# External object files for target signaltest
signaltest_EXTERNAL_OBJECTS =

signaltest: CMakeFiles/signaltest.dir/signaltest.cpp.o
signaltest: CMakeFiles/signaltest.dir/build.make
signaltest: CMakeFiles/signaltest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable signaltest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/signaltest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/signaltest.dir/build: signaltest

.PHONY : CMakeFiles/signaltest.dir/build

CMakeFiles/signaltest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/signaltest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/signaltest.dir/clean

CMakeFiles/signaltest.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/muduo_test/cmake-build-debug/CMakeFiles/signaltest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/signaltest.dir/depend

