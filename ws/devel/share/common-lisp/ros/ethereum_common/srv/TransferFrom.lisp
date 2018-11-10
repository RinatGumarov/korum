; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude TransferFrom-request.msg.html

(cl:defclass <TransferFrom-request> (roslisp-msg-protocol:ros-message)
  ((owner
    :reader owner
    :initarg :owner
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (to
    :reader to
    :initarg :to
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (value
    :reader value
    :initarg :value
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass TransferFrom-request (<TransferFrom-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransferFrom-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransferFrom-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<TransferFrom-request> is deprecated: use ethereum_common-srv:TransferFrom-request instead.")))

(cl:ensure-generic-function 'owner-val :lambda-list '(m))
(cl:defmethod owner-val ((m <TransferFrom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:owner-val is deprecated.  Use ethereum_common-srv:owner instead.")
  (owner m))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <TransferFrom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:to-val is deprecated.  Use ethereum_common-srv:to instead.")
  (to m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TransferFrom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:value-val is deprecated.  Use ethereum_common-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransferFrom-request>) ostream)
  "Serializes a message object of type '<TransferFrom-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'owner) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'to) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransferFrom-request>) istream)
  "Deserializes a message object of type '<TransferFrom-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'owner) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'to) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransferFrom-request>)))
  "Returns string type for a service object of type '<TransferFrom-request>"
  "ethereum_common/TransferFromRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransferFrom-request)))
  "Returns string type for a service object of type 'TransferFrom-request"
  "ethereum_common/TransferFromRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransferFrom-request>)))
  "Returns md5sum for a message object of type '<TransferFrom-request>"
  "bdaad270cecdaddc8d27fbf972359604")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransferFrom-request)))
  "Returns md5sum for a message object of type 'TransferFrom-request"
  "bdaad270cecdaddc8d27fbf972359604")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransferFrom-request>)))
  "Returns full string definition for message of type '<TransferFrom-request>"
  (cl:format cl:nil "Address owner~%Address to~%UInt256 value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransferFrom-request)))
  "Returns full string definition for message of type 'TransferFrom-request"
  (cl:format cl:nil "Address owner~%Address to~%UInt256 value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransferFrom-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'owner))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'to))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransferFrom-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TransferFrom-request
    (cl:cons ':owner (owner msg))
    (cl:cons ':to (to msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude TransferFrom-response.msg.html

(cl:defclass <TransferFrom-response> (roslisp-msg-protocol:ros-message)
  ((txhash
    :reader txhash
    :initarg :txhash
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 32 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TransferFrom-response (<TransferFrom-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransferFrom-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransferFrom-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<TransferFrom-response> is deprecated: use ethereum_common-srv:TransferFrom-response instead.")))

(cl:ensure-generic-function 'txhash-val :lambda-list '(m))
(cl:defmethod txhash-val ((m <TransferFrom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:txhash-val is deprecated.  Use ethereum_common-srv:txhash instead.")
  (txhash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransferFrom-response>) ostream)
  "Serializes a message object of type '<TransferFrom-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'txhash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransferFrom-response>) istream)
  "Deserializes a message object of type '<TransferFrom-response>"
  (cl:setf (cl:slot-value msg 'txhash) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'txhash)))
    (cl:dotimes (i 32)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransferFrom-response>)))
  "Returns string type for a service object of type '<TransferFrom-response>"
  "ethereum_common/TransferFromResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransferFrom-response)))
  "Returns string type for a service object of type 'TransferFrom-response"
  "ethereum_common/TransferFromResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransferFrom-response>)))
  "Returns md5sum for a message object of type '<TransferFrom-response>"
  "bdaad270cecdaddc8d27fbf972359604")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransferFrom-response)))
  "Returns md5sum for a message object of type 'TransferFrom-response"
  "bdaad270cecdaddc8d27fbf972359604")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransferFrom-response>)))
  "Returns full string definition for message of type '<TransferFrom-response>"
  (cl:format cl:nil "uint8[32] txhash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransferFrom-response)))
  "Returns full string definition for message of type 'TransferFrom-response"
  (cl:format cl:nil "uint8[32] txhash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransferFrom-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'txhash) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransferFrom-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TransferFrom-response
    (cl:cons ':txhash (txhash msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TransferFrom)))
  'TransferFrom-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TransferFrom)))
  'TransferFrom-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransferFrom)))
  "Returns string type for a service object of type '<TransferFrom>"
  "ethereum_common/TransferFrom")