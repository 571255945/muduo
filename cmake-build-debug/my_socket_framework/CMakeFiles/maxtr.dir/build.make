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
include my_socket_framework/CMakeFiles/maxtr.dir/depend.make

# Include the progress variables for this target.
include my_socket_framework/CMakeFiles/maxtr.dir/progress.make

# Include the compile flags for this target's objects.
include my_socket_framework/CMakeFiles/maxtr.dir/flags.make

my_socket_framework/CMakeFiles/maxtr.dir/matrix_main.cpp.o: my_socket_framework/CMakeFiles/maxtr.dir/flags.make
my_socket_framework/CMakeFiles/maxtr.dir/matrix_main.cpp.o: ../my_socket_framework/matrix_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_socket_framework/CMakeFiles/maxtr.dir/matrix_main.cpp.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/my_socket_framework && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/maxtr.dir/matrix_main.cpp.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/matrix_main.cpp

my_socket_framework/CMakeFiles/maxtr.dir/matrix_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/maxtr.dir/matrix_main.cpp.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/my_socket_framework && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/matrix_main.cpp > CMakeFiles/maxtr.dir/matrix_main.cpp.i

my_socket_framework/CMakeFiles/maxtr.dir/matrix_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/maxtr.dir/matrix_main.cpp.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/my_socket_framework && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/matrix_main.cpp -o CMakeFiles/maxtr.dir/matrix_main.cpp.s

# Object files for target maxtr
maxtr_OBJECTS = \
"CMakeFiles/maxtr.dir/matrix_main.cpp.o"

# External object files for target maxtr
maxtr_EXTERNAL_OBJECTS =

bin/maxtr: my_socket_framework/CMakeFiles/maxtr.dir/matrix_main.cpp.o
bin/maxtr: my_socket_framework/CMakeFiles/maxtr.dir/build.make
bin/maxtr: my_socket_framework/CMakeFiles/maxtr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/maxtr"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/my_socket_framework && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/maxtr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_socket_framework/CMakeFiles/maxtr.dir/build: bin/maxtr

.PHONY : my_socket_framework/CMakeFiles/maxtr.dir/build

my_socket_framework/CMakeFiles/maxtr.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/my_socket_framework && $(CMAKE_COMMAND) -P CMakeFiles/maxtr.dir/cmake_clean.cmake
.PHONY : my_socket_framework/CMakeFiles/maxtr.dir/clean

my_socket_framework/CMakeFiles/maxtr.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/my_socket_framework /home/yuanye/WorkSpace/Git/My_Github/muduo/cmake-build-debug/my_socket_framework/CMakeFiles/maxtr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_socket_framework/CMakeFiles/maxtr.dir/depend

