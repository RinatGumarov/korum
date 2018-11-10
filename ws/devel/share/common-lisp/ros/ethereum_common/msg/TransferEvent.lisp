; Auto-generated. Do not edit!


(cl:in-package ethereum_common-msg)


;//! \htmlinclude TransferEvent.msg.html

(cl:defclass <TransferEvent> (roslisp-msg-protocol:ros-message)
  ((args_from
    :reader args_from
    :initarg :args_from
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (args_to
    :reader args_to
    :initarg :args_to
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (args_value
    :reader args_value
    :initarg :args_value
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass TransferEvent (<TransferEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransferEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransferEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-msg:<TransferEvent> is deprecated: use ethereum_common-msg:TransferEvent instead.")))

(cl:ensure-generic-function 'args_from-val :lambda-list '(m))
(cl:defmethod args_from-val ((m <TransferEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:args_from-val is deprecated.  Use ethereum_common-msg:args_from instead.")
  (args_from m))

(cl:ensure-generic-function 'args_to-val :lambda-list '(m))
(cl:defmethod args_to-val ((m <TransferEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:args_to-val is deprecated.  Use ethereum_common-msg:args_to instead.")
  (args_to m))

(cl:ensure-generic-function 'args_value-val :lambda-list '(m))
(cl:defmethod args_value-val ((m <TransferEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:args_value-val is deprecated.  Use ethereum_common-msg:args_value instead.")
  (args_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransferEvent>) ostream)
  "Serializes a message object of type '<TransferEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'args_from) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'args_to) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'args_value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransferEvent>) istream)
  "Deserializes a message object of type '<TransferEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'args_from) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'args_to) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'args_value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransferEvent>)))
  "Returns string type for a message object of type '<TransferEvent>"
  "ethereum_common/TransferEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransferEvent)))
  "Returns string type for a message object of type 'TransferEvent"
  "ethereum_common/TransferEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransferEvent>)))
  "Returns md5sum for a message object of type '<TransferEvent>"
  "35f272b72902fee74cbfac3183ab4ae1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransferEvent)))
  "Returns md5sum for a message object of type 'TransferEvent"
  "35f272b72902fee74cbfac3183ab4ae1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransferEvent>)))
  "Returns full string definition for message of type '<TransferEvent>"
  (cl:format cl:nil "Address args_from ~%Address args_to~%UInt256 args_value ~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransferEvent)))
  "Returns full string definition for message of type 'TransferEvent"
  (cl:format cl:nil "Address args_from ~%Address args_to~%UInt256 args_value ~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransferEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'args_from))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'args_to))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'args_value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransferEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'TransferEvent
    (cl:cons ':args_from (args_from msg))
    (cl:cons ':args_to (args_to msg))
    (cl:cons ':args_value (args_value msg))
))
