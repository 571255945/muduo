# Install script for directory: /home/yuanye/WorkSpace/Git/My_Github/muduo/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/ace/ttcp/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/chat/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/asio/tutorial/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/fastcgi/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/filetransfer/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/hub/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/idleconnection/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/maxconnection/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/memcached/client/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/memcached/server/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/multiplexer/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/discard/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/echo/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/netty/uptime/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/pingpong/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/roundtrip/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/shorturl/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/simple/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/socks4a/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/sudoku/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/twisted/finger/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/wordcount/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/zeromq/cmake_install.cmake")
  include("/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/my_test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/yuanye/WorkSpace/Git/My_Github/muduo/examples/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
