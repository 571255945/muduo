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
include asio/chat/CMakeFiles/asio_chat_server_threaded.dir/depend.make

# Include the progress variables for this target.
include asio/chat/CMakeFiles/asio_chat_server_threaded.dir/progress.make

# Include the compile flags for this target's objects.
include asio/chat/CMakeFiles/asio_chat_server_threaded.dir/flags.make

asio/chat/CMakeFiles/asio_chat_server_threaded.dir/server_threaded.o: asio/chat/CMakeFiles/asio_chat_server_threaded.dir/flags.make
asio/chat/CMakeFiles/asio_chat_server_threaded.dir/server_threaded.o: ../asio/chat/server_threaded.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object asio/chat/CMakeFiles/asio_chat_server_threaded.dir/server_threaded.o"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asio_chat_server_threaded.dir/server_threaded.o -c /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/asio/chat/server_threaded.cc

asio/chat/CMakeFiles/asio_chat_server_threaded.dir/server_threaded.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asio_chat_server_threaded.dir/server_threaded.i"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/asio/chat/server_threaded.cc > CMakeFiles/asio_chat_server_threaded.dir/server_threaded.i

asio/chat/CMakeFiles/asio_chat_server_threaded.dir/server_threaded.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asio_chat_server_threaded.dir/server_threaded.s"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/asio/chat/server_threaded.cc -o CMakeFiles/asio_chat_server_threaded.dir/server_threaded.s

# Object files for target asio_chat_server_threaded
asio_chat_server_threaded_OBJECTS = \
"CMakeFiles/asio_chat_server_threaded.dir/server_threaded.o"

# External object files for target asio_chat_server_threaded
asio_chat_server_threaded_EXTERNAL_OBJECTS =

asio/chat/asio_chat_server_threaded: asio/chat/CMakeFiles/asio_chat_server_threaded.dir/server_threaded.o
asio/chat/asio_chat_server_threaded: asio/chat/CMakeFiles/asio_chat_server_threaded.dir/build.make
asio/chat/asio_chat_server_threaded: asio/chat/CMakeFiles/asio_chat_server_threaded.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable asio_chat_server_threaded"
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asio_chat_server_threaded.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
asio/chat/CMakeFiles/asio_chat_server_threaded.dir/build: asio/chat/asio_chat_server_threaded

.PHONY : asio/chat/CMakeFiles/asio_chat_server_threaded.dir/build

asio/chat/CMakeFiles/asio_chat_server_threaded.dir/clean:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat && $(CMAKE_COMMAND) -P CMakeFiles/asio_chat_server_threaded.dir/cmake_clean.cmake
.PHONY : asio/chat/CMakeFiles/asio_chat_server_threaded.dir/clean

asio/chat/CMakeFiles/asio_chat_server_threaded.dir/depend:
	cd /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuanye/WorkSpace/Git/My_Github/muduo/examples /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/asio/chat /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat /home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat/CMakeFiles/asio_chat_server_threaded.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : asio/chat/CMakeFiles/asio_chat_server_threaded.dir/depend

