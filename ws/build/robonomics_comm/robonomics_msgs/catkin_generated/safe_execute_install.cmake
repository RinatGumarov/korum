execute_process(COMMAND "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_msgs/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_msgs/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
