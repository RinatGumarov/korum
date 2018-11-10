# Install script for directory: /home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common

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
  include("/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common/msg" TYPE FILE FILES
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common/srv" TYPE FILE FILES
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv"
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common/cmake" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_common-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/include/ethereum_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/share/roseus/ros/ethereum_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/share/common-lisp/ros/ethereum_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/share/gennodejs/ros/ethereum_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/ethereum_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/ethereum_common" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/ethereum_common" FILES_MATCHING REGEX "/home/parallels/energyhack_2018/ws/devel/lib/python2.7/dist-packages/ethereum_common/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_common.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common/cmake" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_common-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common/cmake" TYPE FILE FILES
    "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_commonConfig.cmake"
    "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_commonConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_common.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common/cmake" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_common-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common/cmake" TYPE FILE FILES
    "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_commonConfig.cmake"
    "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/ethereum_commonConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common" TYPE FILE FILES "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ethereum_common" TYPE PROGRAM FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/erc20_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ethereum_common" TYPE PROGRAM FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/eth_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ethereum_common" TYPE PROGRAM FILES "/home/parallels/energyhack_2018/ws/build/robonomics_comm/ethereum_common/catkin_generated/installspace/signer_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethereum_common" TYPE DIRECTORY FILES "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/launch")
endif()

