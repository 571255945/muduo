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
include shorturl/CMakeFiles/shorturl.dir/depend.make

# Include the progress variables for this target.
include shorturl/CMakeFiles/shorturl.dir/progress.make

# Include the compile flags for this target's objects.
include shorturl/CMakeFiles/shorturl.dir/flags.make

shorturl/CMakeFiles/shorturl.dir/shorturl.o: shorturl/CMakeFiles/shorturl.dir/flags.make
shorturl/CMakeFiles/shorturl.dir/shorturl.o: ../shorturl/shorturl.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object shorturl/CMakeFiles/shorturl.dir/shorturl.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shorturl.dir/shorturl.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/shorturl/shorturl.cc

shorturl/CMakeFiles/shorturl.dir/shorturl.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shorturl.dir/shorturl.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/shorturl/shorturl.cc > CMakeFiles/shorturl.dir/shorturl.i

shorturl/CMakeFiles/shorturl.dir/shorturl.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shorturl.dir/shorturl.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/shorturl/shorturl.cc -o CMakeFiles/shorturl.dir/shorturl.s

# Object files for target shorturl
shorturl_OBJECTS = \
"CMakeFiles/shorturl.dir/shorturl.o"

# External object files for target shorturl
shorturl_EXTERNAL_OBJECTS =

shorturl/shorturl: shorturl/CMakeFiles/shorturl.dir/shorturl.o
shorturl/shorturl: shorturl/CMakeFiles/shorturl.dir/build.make
shorturl/shorturl: shorturl/CMakeFiles/shorturl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable shorturl"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shorturl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shorturl/CMakeFiles/shorturl.dir/build: shorturl/shorturl

.PHONY : shorturl/CMakeFiles/shorturl.dir/build

shorturl/CMakeFiles/shorturl.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl && $(CMAKE_COMMAND) -P CMakeFiles/shorturl.dir/cmake_clean.cmake
.PHONY : shorturl/CMakeFiles/shorturl.dir/clean

shorturl/CMakeFiles/shorturl.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/shorturl /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl/CMakeFiles/shorturl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shorturl/CMakeFiles/shorturl.dir/depend

