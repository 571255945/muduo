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
include simple/CMakeFiles/my_echo.dir/depend.make

# Include the progress variables for this target.
include simple/CMakeFiles/my_echo.dir/progress.make

# Include the compile flags for this target's objects.
include simple/CMakeFiles/my_echo.dir/flags.make

simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo.o: simple/CMakeFiles/my_echo.dir/flags.make
simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo.o: ../simple/my_echo_test/my_echo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_echo.dir/my_echo_test/my_echo.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/my_echo_test/my_echo.cpp

simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_echo.dir/my_echo_test/my_echo.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/my_echo_test/my_echo.cpp > CMakeFiles/my_echo.dir/my_echo_test/my_echo.i

simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_echo.dir/my_echo_test/my_echo.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/my_echo_test/my_echo.cpp -o CMakeFiles/my_echo.dir/my_echo_test/my_echo.s

simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.o: simple/CMakeFiles/my_echo.dir/flags.make
simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.o: ../simple/my_echo_test/my_echo_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/my_echo_test/my_echo_main.cpp

simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/my_echo_test/my_echo_main.cpp > CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.i

simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/my_echo_test/my_echo_main.cpp -o CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.s

# Object files for target my_echo
my_echo_OBJECTS = \
"CMakeFiles/my_echo.dir/my_echo_test/my_echo.o" \
"CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.o"

# External object files for target my_echo
my_echo_EXTERNAL_OBJECTS =

simple/my_echo: simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo.o
simple/my_echo: simple/CMakeFiles/my_echo.dir/my_echo_test/my_echo_main.o
simple/my_echo: simple/CMakeFiles/my_echo.dir/build.make
simple/my_echo: simple/CMakeFiles/my_echo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable my_echo"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_echo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
simple/CMakeFiles/my_echo.dir/build: simple/my_echo

.PHONY : simple/CMakeFiles/my_echo.dir/build

simple/CMakeFiles/my_echo.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple && $(CMAKE_COMMAND) -P CMakeFiles/my_echo.dir/cmake_clean.cmake
.PHONY : simple/CMakeFiles/my_echo.dir/clean

simple/CMakeFiles/my_echo.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple/CMakeFiles/my_echo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : simple/CMakeFiles/my_echo.dir/depend

