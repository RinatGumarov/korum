# Install script for directory: /home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/parallels/energyhack_2018/ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robonomics_lighthouse/msg" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robonomics_lighthouse/cmake" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/installspace/robonomics_lighthouse-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/include/robonomics_lighthouse")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/share/roseus/ros/robonomics_lighthouse")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/share/common-lisp/ros/robonomics_lighthouse")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/share/gennodejs/ros/robonomics_lighthouse")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/robonomics_lighthouse")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/robonomics_lighthouse" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/robonomics_lighthouse" FILES_MATCHING REGEX "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/robonomics_lighthouse/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/installspace/robonomics_lighthouse.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robonomics_lighthouse/cmake" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/installspace/robonomics_lighthouse-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robonomics_lighthouse/cmake" TYPE FILE FILES
    "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/installspace/robonomics_lighthouseConfig.cmake"
    "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/installspace/robonomics_lighthouseConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robonomics_lighthouse" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robonomics_lighthouse" TYPE PROGRAM FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/installspace/matcher_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robonomics_lighthouse" TYPE PROGRAM FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_lighthouse/catkin_generated/installspace/lighthouse_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robonomics_lighthouse/launch" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/launch/lighthouse.launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robonomics_lighthouse/abi" TYPE FILE FILES
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/abi/liability.json"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/abi/lighthouse.json"
    )
endif()

