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
include sudoku/CMakeFiles/sudoku_client_batch.dir/depend.make

# Include the progress variables for this target.
include sudoku/CMakeFiles/sudoku_client_batch.dir/progress.make

# Include the compile flags for this target's objects.
include sudoku/CMakeFiles/sudoku_client_batch.dir/flags.make

sudoku/CMakeFiles/sudoku_client_batch.dir/batch.o: sudoku/CMakeFiles/sudoku_client_batch.dir/flags.make
sudoku/CMakeFiles/sudoku_client_batch.dir/batch.o: ../sudoku/batch.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sudoku/CMakeFiles/sudoku_client_batch.dir/batch.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sudoku_client_batch.dir/batch.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/sudoku/batch.cc

sudoku/CMakeFiles/sudoku_client_batch.dir/batch.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sudoku_client_batch.dir/batch.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/sudoku/batch.cc > CMakeFiles/sudoku_client_batch.dir/batch.i

sudoku/CMakeFiles/sudoku_client_batch.dir/batch.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sudoku_client_batch.dir/batch.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/sudoku/batch.cc -o CMakeFiles/sudoku_client_batch.dir/batch.s

sudoku/CMakeFiles/sudoku_client_batch.dir/sudoku.o: sudoku/CMakeFiles/sudoku_client_batch.dir/flags.make
sudoku/CMakeFiles/sudoku_client_batch.dir/sudoku.o: ../sudoku/sudoku.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sudoku/CMakeFiles/sudoku_client_batch.dir/sudoku.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sudoku_client_batch.dir/sudoku.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/sudoku/sudoku.cc

sudoku/CMakeFiles/sudoku_client_batch.dir/sudoku.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sudoku_client_batch.dir/sudoku.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/sudoku/sudoku.cc > CMakeFiles/sudoku_client_batch.dir/sudoku.i

sudoku/CMakeFiles/sudoku_client_batch.dir/sudoku.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sudoku_client_batch.dir/sudoku.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/sudoku/sudoku.cc -o CMakeFiles/sudoku_client_batch.dir/sudoku.s

# Object files for target sudoku_client_batch
sudoku_client_batch_OBJECTS = \
"CMakeFiles/sudoku_client_batch.dir/batch.o" \
"CMakeFiles/sudoku_client_batch.dir/sudoku.o"

# External object files for target sudoku_client_batch
sudoku_client_batch_EXTERNAL_OBJECTS =

sudoku/sudoku_client_batch: sudoku/CMakeFiles/sudoku_client_batch.dir/batch.o
sudoku/sudoku_client_batch: sudoku/CMakeFiles/sudoku_client_batch.dir/sudoku.o
sudoku/sudoku_client_batch: sudoku/CMakeFiles/sudoku_client_batch.dir/build.make
sudoku/sudoku_client_batch: sudoku/CMakeFiles/sudoku_client_batch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sudoku_client_batch"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sudoku_client_batch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sudoku/CMakeFiles/sudoku_client_batch.dir/build: sudoku/sudoku_client_batch

.PHONY : sudoku/CMakeFiles/sudoku_client_batch.dir/build

sudoku/CMakeFiles/sudoku_client_batch.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku && $(CMAKE_COMMAND) -P CMakeFiles/sudoku_client_batch.dir/cmake_clean.cmake
.PHONY : sudoku/CMakeFiles/sudoku_client_batch.dir/clean

sudoku/CMakeFiles/sudoku_client_batch.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/sudoku /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku/CMakeFiles/sudoku_client_batch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sudoku/CMakeFiles/sudoku_client_batch.dir/depend

