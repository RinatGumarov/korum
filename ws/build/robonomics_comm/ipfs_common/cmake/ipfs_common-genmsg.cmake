# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "ipfs_common: 0 messages, 0 services")

set(MSG_I_FLAGS "-Irobonomics_msgs:/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ipfs_common_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(ipfs_common
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ipfs_common
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ipfs_common_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ipfs_common_generate_messages ipfs_common_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(ipfs_common_gencpp)
add_dependencies(ipfs_common_gencpp ipfs_common_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ipfs_common_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(ipfs_common
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ipfs_common
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ipfs_common_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ipfs_common_generate_messages ipfs_common_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(ipfs_common_geneus)
add_dependencies(ipfs_common_geneus ipfs_common_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ipfs_common_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(ipfs_common
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ipfs_common
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ipfs_common_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ipfs_common_generate_messages ipfs_common_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(ipfs_common_genlisp)
add_dependencies(ipfs_common_genlisp ipfs_common_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ipfs_common_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(ipfs_common
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ipfs_common
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ipfs_common_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ipfs_common_generate_messages ipfs_common_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(ipfs_common_gennodejs)
add_dependencies(ipfs_common_gennodejs ipfs_common_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ipfs_common_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(ipfs_common
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ipfs_common
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ipfs_common_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ipfs_common_generate_messages ipfs_common_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(ipfs_common_genpy)
add_dependencies(ipfs_common_genpy ipfs_common_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ipfs_common_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ipfs_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ipfs_common
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_cpp)
  add_dependencies(ipfs_common_generate_messages_cpp robonomics_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ipfs_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ipfs_common
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_eus)
  add_dependencies(ipfs_common_generate_messages_eus robonomics_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ipfs_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ipfs_common
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_lisp)
  add_dependencies(ipfs_common_generate_messages_lisp robonomics_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ipfs_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ipfs_common
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET robonomics_msgs_generate_messages_nodejs)
  add_dependencies(ipfs_common_generate_messages_nodejs robonomics_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ipfs_common)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ipfs_common\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ipfs_common
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ipfs_common
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ipfs_common/.+/__init__.pyc?$"
  )
endif()
if(TARGET robonomics_msgs_generate_messages_py)
  add_dependencies(ipfs_common_generate_messages_py robonomics_msgs_generate_messages_py)
endif()
