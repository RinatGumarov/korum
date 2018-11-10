# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ethereum_common: 4 messages, 9 services")

set(MSG_I_FLAGS "-Iethereum_common:/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ethereum_common_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv" "ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv" ""
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv" "ethereum_common/Address:ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv" "ethereum_common/Address:ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg" ""
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv" "ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv" "ethereum_common/Address:ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg" "ethereum_common/Address:ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg" ""
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg" "ethereum_common/Address:ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv" "ethereum_common/Address:ethereum_common/UInt256"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv" "ethereum_common/Address"
)

get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv" NAME_WE)
add_custom_target(_ethereum_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethereum_common" "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv" "ethereum_common/Address:ethereum_common/UInt256"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_msg_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_msg_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_msg_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)

### Generating Services
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)
_generate_srv_cpp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
)

### Generating Module File
_generate_module_cpp(ethereum_common
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ethereum_common_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ethereum_common_generate_messages ethereum_common_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_cpp _ethereum_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethereum_common_gencpp)
add_dependencies(ethereum_common_gencpp ethereum_common_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethereum_common_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_msg_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_msg_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_msg_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)

### Generating Services
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)
_generate_srv_eus(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
)

### Generating Module File
_generate_module_eus(ethereum_common
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ethereum_common_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ethereum_common_generate_messages ethereum_common_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_eus _ethereum_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethereum_common_geneus)
add_dependencies(ethereum_common_geneus ethereum_common_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethereum_common_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_msg_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_msg_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_msg_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)

### Generating Services
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)
_generate_srv_lisp(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
)

### Generating Module File
_generate_module_lisp(ethereum_common
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ethereum_common_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ethereum_common_generate_messages ethereum_common_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_lisp _ethereum_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethereum_common_genlisp)
add_dependencies(ethereum_common_genlisp ethereum_common_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethereum_common_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_msg_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_msg_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_msg_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)

### Generating Services
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)
_generate_srv_nodejs(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
)

### Generating Module File
_generate_module_nodejs(ethereum_common
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ethereum_common_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ethereum_common_generate_messages ethereum_common_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_nodejs _ethereum_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethereum_common_gennodejs)
add_dependencies(ethereum_common_gennodejs ethereum_common_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethereum_common_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_msg_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_msg_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_msg_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)

### Generating Services
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)
_generate_srv_py(ethereum_common
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv"
  "${MSG_I_FLAGS}"
  "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg;/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
)

### Generating Module File
_generate_module_py(ethereum_common
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ethereum_common_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ethereum_common_generate_messages ethereum_common_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Balance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/BlockNumber.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Approve.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountToAddressAllowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/UInt256.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Allowance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/TransferFrom.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/ApprovalEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/Address.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg/TransferEvent.msg" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Transfer.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/Accounts.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/srv/AccountBalance.srv" NAME_WE)
add_dependencies(ethereum_common_generate_messages_py _ethereum_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethereum_common_genpy)
add_dependencies(ethereum_common_genpy ethereum_common_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethereum_common_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethereum_common
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethereum_common
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethereum_common
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethereum_common
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethereum_common/.+/__init__.pyc?$"
  )
endif()
