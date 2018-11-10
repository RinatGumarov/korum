# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robonomics_liability: 1 messages, 2 services")

set(MSG_I_FLAGS "-Irobonomics_liability:/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robonomics_liability_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv" NAME_WE)
add_custom_target(_robonomics_liability_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robonomics_liability" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv" ""
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg" NAME_WE)
add_custom_target(_robonomics_liability_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robonomics_liability" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg" ""
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv" NAME_WE)
add_custom_target(_robonomics_liability_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robonomics_liability" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_liability
)

### Generating Services
_generate_srv_cpp(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_liability
)
_generate_srv_cpp(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_liability
)

### Generating Module File
_generate_module_cpp(robonomics_liability
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_liability
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robonomics_liability_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robonomics_liability_generate_messages robonomics_liability_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_cpp _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_cpp _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_cpp _robonomics_liability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_liability_gencpp)
add_dependencies(robonomics_liability_gencpp robonomics_liability_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_liability_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_liability
)

### Generating Services
_generate_srv_eus(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_liability
)
_generate_srv_eus(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_liability
)

### Generating Module File
_generate_module_eus(robonomics_liability
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_liability
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robonomics_liability_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robonomics_liability_generate_messages robonomics_liability_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_eus _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_eus _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_eus _robonomics_liability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_liability_geneus)
add_dependencies(robonomics_liability_geneus robonomics_liability_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_liability_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_liability
)

### Generating Services
_generate_srv_lisp(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_liability
)
_generate_srv_lisp(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_liability
)

### Generating Module File
_generate_module_lisp(robonomics_liability
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_liability
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robonomics_liability_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robonomics_liability_generate_messages robonomics_liability_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_lisp _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_lisp _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_lisp _robonomics_liability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_liability_genlisp)
add_dependencies(robonomics_liability_genlisp robonomics_liability_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_liability_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_liability
)

### Generating Services
_generate_srv_nodejs(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_liability
)
_generate_srv_nodejs(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_liability
)

### Generating Module File
_generate_module_nodejs(robonomics_liability
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_liability
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robonomics_liability_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robonomics_liability_generate_messages robonomics_liability_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_nodejs _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_nodejs _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_nodejs _robonomics_liability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_liability_gennodejs)
add_dependencies(robonomics_liability_gennodejs robonomics_liability_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_liability_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability
)

### Generating Services
_generate_srv_py(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability
)
_generate_srv_py(robonomics_liability
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability
)

### Generating Module File
_generate_module_py(robonomics_liability
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robonomics_liability_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robonomics_liability_generate_messages robonomics_liability_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/StartLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_py _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/msg/Liability.msg" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_py _robonomics_liability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_liability/srv/FinishLiability.srv" NAME_WE)
add_dependencies(robonomics_liability_generate_messages_py _robonomics_liability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robonomics_liability_genpy)
add_dependencies(robonomics_liability_genpy robonomics_liability_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robonomics_liability_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_liability)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robonomics_liability
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_liability)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robonomics_liability
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_liability)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robonomics_liability
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_liability)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robonomics_liability
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robonomics_liability/.+/__init__.pyc?$"
  )
endif()
