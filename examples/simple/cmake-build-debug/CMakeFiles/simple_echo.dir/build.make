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
CMAKE_SOURCE_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/simple_echo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_echo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_echo.dir/flags.make

CMakeFiles/simple_echo.dir/echo/echo.cc.o: CMakeFiles/simple_echo.dir/flags.make
CMakeFiles/simple_echo.dir/echo/echo.cc.o: ../echo/echo.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple_echo.dir/echo/echo.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_echo.dir/echo/echo.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/echo/echo.cc

CMakeFiles/simple_echo.dir/echo/echo.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_echo.dir/echo/echo.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/echo/echo.cc > CMakeFiles/simple_echo.dir/echo/echo.cc.i

CMakeFiles/simple_echo.dir/echo/echo.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_echo.dir/echo/echo.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/echo/echo.cc -o CMakeFiles/simple_echo.dir/echo/echo.cc.s

CMakeFiles/simple_echo.dir/echo/main.cc.o: CMakeFiles/simple_echo.dir/flags.make
CMakeFiles/simple_echo.dir/echo/main.cc.o: ../echo/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/simple_echo.dir/echo/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_echo.dir/echo/main.cc.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/echo/main.cc

CMakeFiles/simple_echo.dir/echo/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_echo.dir/echo/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/echo/main.cc > CMakeFiles/simple_echo.dir/echo/main.cc.i

CMakeFiles/simple_echo.dir/echo/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_echo.dir/echo/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/echo/main.cc -o CMakeFiles/simple_echo.dir/echo/main.cc.s

# Object files for target simple_echo
simple_echo_OBJECTS = \
"CMakeFiles/simple_echo.dir/echo/echo.cc.o" \
"CMakeFiles/simple_echo.dir/echo/main.cc.o"

# External object files for target simple_echo
simple_echo_EXTERNAL_OBJECTS =

simple_echo: CMakeFiles/simple_echo.dir/echo/echo.cc.o
simple_echo: CMakeFiles/simple_echo.dir/echo/main.cc.o
simple_echo: CMakeFiles/simple_echo.dir/build.make
simple_echo: CMakeFiles/simple_echo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable simple_echo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_echo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_echo.dir/build: simple_echo

.PHONY : CMakeFiles/simple_echo.dir/build

CMakeFiles/simple_echo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_echo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_echo.dir/clean

CMakeFiles/simple_echo.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/simple/cmake-build-debug/CMakeFiles/simple_echo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_echo.dir/depend

