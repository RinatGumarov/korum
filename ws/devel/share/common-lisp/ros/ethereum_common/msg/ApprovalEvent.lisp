; Auto-generated. Do not edit!


(cl:in-package ethereum_common-msg)


;//! \htmlinclude ApprovalEvent.msg.html

(cl:defclass <ApprovalEvent> (roslisp-msg-protocol:ros-message)
  ((args_owner
    :reader args_owner
    :initarg :args_owner
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (args_spender
    :reader args_spender
    :initarg :args_spender
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (args_value
    :reader args_value
    :initarg :args_value
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass ApprovalEvent (<ApprovalEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApprovalEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApprovalEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-msg:<ApprovalEvent> is deprecated: use ethereum_common-msg:ApprovalEvent instead.")))

(cl:ensure-generic-function 'args_owner-val :lambda-list '(m))
(cl:defmethod args_owner-val ((m <ApprovalEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:args_owner-val is deprecated.  Use ethereum_common-msg:args_owner instead.")
  (args_owner m))

(cl:ensure-generic-function 'args_spender-val :lambda-list '(m))
(cl:defmethod args_spender-val ((m <ApprovalEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:args_spender-val is deprecated.  Use ethereum_common-msg:args_spender instead.")
  (args_spender m))

(cl:ensure-generic-function 'args_value-val :lambda-list '(m))
(cl:defmethod args_value-val ((m <ApprovalEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:args_value-val is deprecated.  Use ethereum_common-msg:args_value instead.")
  (args_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApprovalEvent>) ostream)
  "Serializes a message object of type '<ApprovalEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'args_owner) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'args_spender) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'args_value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApprovalEvent>) istream)
  "Deserializes a message object of type '<ApprovalEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'args_owner) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'args_spender) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'args_value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApprovalEvent>)))
  "Returns string type for a message object of type '<ApprovalEvent>"
  "ethereum_common/ApprovalEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApprovalEvent)))
  "Returns string type for a message object of type 'ApprovalEvent"
  "ethereum_common/ApprovalEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApprovalEvent>)))
  "Returns md5sum for a message object of type '<ApprovalEvent>"
  "f1aefc216de0e824eacf1263c8aeb4df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApprovalEvent)))
  "Returns md5sum for a message object of type 'ApprovalEvent"
  "f1aefc216de0e824eacf1263c8aeb4df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApprovalEvent>)))
  "Returns full string definition for message of type '<ApprovalEvent>"
  (cl:format cl:nil "Address args_owner ~%Address args_spender~%UInt256 args_value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApprovalEvent)))
  "Returns full string definition for message of type 'ApprovalEvent"
  (cl:format cl:nil "Address args_owner ~%Address args_spender~%UInt256 args_value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApprovalEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'args_owner))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'args_spender))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'args_value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApprovalEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ApprovalEvent
    (cl:cons ':args_owner (args_owner msg))
    (cl:cons ':args_spender (args_spender msg))
    (cl:cons ':args_value (args_value msg))
))
