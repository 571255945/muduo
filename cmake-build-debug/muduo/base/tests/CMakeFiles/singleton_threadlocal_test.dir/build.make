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
include muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/depend.make

# Include the progress variables for this target.
include muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/flags.make

muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.o: muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/flags.make
muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.o: ../muduo/base/tests/SingletonThreadLocal_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/muduo/base/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/base/tests/SingletonThreadLocal_test.cc

muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/muduo/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/base/tests/SingletonThreadLocal_test.cc > CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.i

muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/muduo/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/base/tests/SingletonThreadLocal_test.cc -o CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.s

# Object files for target singleton_threadlocal_test
singleton_threadlocal_test_OBJECTS = \
"CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.o"

# External object files for target singleton_threadlocal_test
singleton_threadlocal_test_EXTERNAL_OBJECTS =

bin/singleton_threadlocal_test: muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cc.o
bin/singleton_threadlocal_test: muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/build.make
bin/singleton_threadlocal_test: lib/libmuduo_base.a
bin/singleton_threadlocal_test: muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/singleton_threadlocal_test"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/muduo/base/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/singleton_threadlocal_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/build: bin/singleton_threadlocal_test

.PHONY : muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/build

muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/muduo/base/tests && $(CMAKE_COMMAND) -P CMakeFiles/singleton_threadlocal_test.dir/cmake_clean.cmake
.PHONY : muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/clean

muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo /home/yuanye/WorkSpace/Git/My_Github/muduo/muduo/base/tests /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/muduo/base/tests /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/base/tests/CMakeFiles/singleton_threadlocal_test.dir/depend

