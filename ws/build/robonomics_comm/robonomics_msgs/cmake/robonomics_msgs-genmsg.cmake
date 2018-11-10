# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robonomics_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Irobonomics_msgs:/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robonomics_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg" NAME_WE)
add_custom_target(_robonomics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robonomics_msgs" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg" ""
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg" NAME_WE)
add_custom_target(_robonomics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robonomics_msgs" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg" ""
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg" NAME_WE)
add_custom_target(_robonomics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robonomics_msgs" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_cpp(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_cpp(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(robonomics_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robonomics_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robonomics_msgs_generate_messages robonomics_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_cpp _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_cpp _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_cpp _robonomics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_msgs_gencpp)
add_dependencies(robonomics_msgs_gencpp robonomics_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_eus(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_eus(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(robonomics_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robonomics_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robonomics_msgs_generate_messages robonomics_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_eus _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_eus _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_eus _robonomics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_msgs_geneus)
add_dependencies(robonomics_msgs_geneus robonomics_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_lisp(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_lisp(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(robonomics_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robonomics_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robonomics_msgs_generate_messages robonomics_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_lisp _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_lisp _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_lisp _robonomics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_msgs_genlisp)
add_dependencies(robonomics_msgs_genlisp robonomics_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_nodejs(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_nodejs(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robonomics_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robonomics_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robonomics_msgs_generate_messages robonomics_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_nodejs _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_nodejs _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_nodejs _robonomics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_msgs_gennodejs)
add_dependencies(robonomics_msgs_gennodejs robonomics_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_py(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs
)
_generate_msg_py(robonomics_msgs
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(robonomics_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robonomics_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robonomics_msgs_generate_messages robonomics_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_py _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_py _robonomics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Result.msg" NAME_WE)
add_dependencies(robonomics_msgs_generate_messages_py _robonomics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_msgs_genpy)
add_dependencies(robonomics_msgs_genpy robonomics_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_msgs/.+/__init__.pyc?$"
  )
endif()
