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
CMAKE_SOURCE_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/matrix_framework.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/matrix_framework.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrix_framework.dir/flags.make

CMakeFiles/matrix_framework.dir/matrix_main.cpp.o: CMakeFiles/matrix_framework.dir/flags.make
CMakeFiles/matrix_framework.dir/matrix_main.cpp.o: ../matrix_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matrix_framework.dir/matrix_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix_framework.dir/matrix_main.cpp.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/matrix_main.cpp

CMakeFiles/matrix_framework.dir/matrix_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_framework.dir/matrix_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/matrix_main.cpp > CMakeFiles/matrix_framework.dir/matrix_main.cpp.i

CMakeFiles/matrix_framework.dir/matrix_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_framework.dir/matrix_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/matrix_main.cpp -o CMakeFiles/matrix_framework.dir/matrix_main.cpp.s

CMakeFiles/matrix_framework.dir/acceptor.cpp.o: CMakeFiles/matrix_framework.dir/flags.make
CMakeFiles/matrix_framework.dir/acceptor.cpp.o: ../acceptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/matrix_framework.dir/acceptor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix_framework.dir/acceptor.cpp.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/acceptor.cpp

CMakeFiles/matrix_framework.dir/acceptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_framework.dir/acceptor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/acceptor.cpp > CMakeFiles/matrix_framework.dir/acceptor.cpp.i

CMakeFiles/matrix_framework.dir/acceptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_framework.dir/acceptor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/acceptor.cpp -o CMakeFiles/matrix_framework.dir/acceptor.cpp.s

# Object files for target matrix_framework
matrix_framework_OBJECTS = \
"CMakeFiles/matrix_framework.dir/matrix_main.cpp.o" \
"CMakeFiles/matrix_framework.dir/acceptor.cpp.o"

# External object files for target matrix_framework
matrix_framework_EXTERNAL_OBJECTS =

matrix_framework: CMakeFiles/matrix_framework.dir/matrix_main.cpp.o
matrix_framework: CMakeFiles/matrix_framework.dir/acceptor.cpp.o
matrix_framework: CMakeFiles/matrix_framework.dir/build.make
matrix_framework: CMakeFiles/matrix_framework.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable matrix_framework"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_framework.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrix_framework.dir/build: matrix_framework

.PHONY : CMakeFiles/matrix_framework.dir/build

CMakeFiles/matrix_framework.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matrix_framework.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matrix_framework.dir/clean

CMakeFiles/matrix_framework.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/my_socket_framework/cmake-build-debug/CMakeFiles/matrix_framework.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrix_framework.dir/depend
