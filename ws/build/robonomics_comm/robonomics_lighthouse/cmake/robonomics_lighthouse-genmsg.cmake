# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robonomics_lighthouse: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irobonomics_lighthouse:/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg;-Irobonomics_msgs:/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robonomics_lighthouse_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg" NAME_WE)
add_custom_target(_robonomics_lighthouse_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robonomics_lighthouse" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg" "robonomics_msgs/Demand:robonomics_msgs/Offer"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robonomics_lighthouse
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_lighthouse
)

### Generating Services

### Generating Module File
_generate_module_cpp(robonomics_lighthouse
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_lighthouse
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robonomics_lighthouse_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robonomics_lighthouse_generate_messages robonomics_lighthouse_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg" NAME_WE)
add_dependencies(robonomics_lighthouse_generate_messages_cpp _robonomics_lighthouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_lighthouse_gencpp)
add_dependencies(robonomics_lighthouse_gencpp robonomics_lighthouse_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_lighthouse_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robonomics_lighthouse
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_lighthouse
)

### Generating Services

### Generating Module File
_generate_module_eus(robonomics_lighthouse
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_lighthouse
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robonomics_lighthouse_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robonomics_lighthouse_generate_messages robonomics_lighthouse_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg" NAME_WE)
add_dependencies(robonomics_lighthouse_generate_messages_eus _robonomics_lighthouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_lighthouse_geneus)
add_dependencies(robonomics_lighthouse_geneus robonomics_lighthouse_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_lighthouse_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robonomics_lighthouse
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_lighthouse
)

### Generating Services

### Generating Module File
_generate_module_lisp(robonomics_lighthouse
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_lighthouse
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robonomics_lighthouse_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robonomics_lighthouse_generate_messages robonomics_lighthouse_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg" NAME_WE)
add_dependencies(robonomics_lighthouse_generate_messages_lisp _robonomics_lighthouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_lighthouse_genlisp)
add_dependencies(robonomics_lighthouse_genlisp robonomics_lighthouse_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_lighthouse_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robonomics_lighthouse
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_lighthouse
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robonomics_lighthouse
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_lighthouse
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robonomics_lighthouse_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robonomics_lighthouse_generate_messages robonomics_lighthouse_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg" NAME_WE)
add_dependencies(robonomics_lighthouse_generate_messages_nodejs _robonomics_lighthouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_lighthouse_gennodejs)
add_dependencies(robonomics_lighthouse_gennodejs robonomics_lighthouse_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_lighthouse_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robonomics_lighthouse
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Demand.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg/Offer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_lighthouse
)

### Generating Services

### Generating Module File
_generate_module_py(robonomics_lighthouse
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_lighthouse
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robonomics_lighthouse_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robonomics_lighthouse_generate_messages robonomics_lighthouse_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg/Deal.msg" NAME_WE)
add_dependencies(robonomics_lighthouse_generate_messages_py _robonomics_lighthouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_lighthouse_genpy)
add_dependencies(robonomics_lighthouse_genpy robonomics_lighthouse_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_lighthouse_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_lighthouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_lighthouse
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_cpp)
  add_dependencies(robonomics_lighthouse_generate_messages_cpp robonomics_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_lighthouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_lighthouse
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_eus)
  add_dependencies(robonomics_lighthouse_generate_messages_eus robonomics_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_lighthouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_lighthouse
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_lisp)
  add_dependencies(robonomics_lighthouse_generate_messages_lisp robonomics_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_lighthouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_lighthouse
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_nodejs)
  add_dependencies(robonomics_lighthouse_generate_messages_nodejs robonomics_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_lighthouse)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_lighthouse\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_lighthouse
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_lighthouse
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_lighthouse/.+/__init__.pyc?$"
  )
endif()
if(TARGET robonomics_msgs_generate_messages_py)
  add_dependencies(robonomics_lighthouse_generate_messages_py robonomics_msgs_generate_messages_py)
endif()
