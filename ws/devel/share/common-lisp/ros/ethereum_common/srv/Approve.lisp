; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude Approve-request.msg.html

(cl:defclass <Approve-request> (roslisp-msg-protocol:ros-message)
  ((spender
    :reader spender
    :initarg :spender
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (value
    :reader value
    :initarg :value
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass Approve-request (<Approve-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Approve-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Approve-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Approve-request> is deprecated: use ethereum_common-srv:Approve-request instead.")))

(cl:ensure-generic-function 'spender-val :lambda-list '(m))
(cl:defmethod spender-val ((m <Approve-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:spender-val is deprecated.  Use ethereum_common-srv:spender instead.")
  (spender m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Approve-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:value-val is deprecated.  Use ethereum_common-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Approve-request>) ostream)
  "Serializes a message object of type '<Approve-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spender) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Approve-request>) istream)
  "Deserializes a message object of type '<Approve-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spender) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Approve-request>)))
  "Returns string type for a service object of type '<Approve-request>"
  "ethereum_common/ApproveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approve-request)))
  "Returns string type for a service object of type 'Approve-request"
  "ethereum_common/ApproveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Approve-request>)))
  "Returns md5sum for a message object of type '<Approve-request>"
  "cf2aa6f2895c288e13b4e136d4e4a5fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Approve-request)))
  "Returns md5sum for a message object of type 'Approve-request"
  "cf2aa6f2895c288e13b4e136d4e4a5fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Approve-request>)))
  "Returns full string definition for message of type '<Approve-request>"
  (cl:format cl:nil "Address spender~%UInt256 value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Approve-request)))
  "Returns full string definition for message of type 'Approve-request"
  (cl:format cl:nil "Address spender~%UInt256 value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Approve-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spender))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Approve-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Approve-request
    (cl:cons ':spender (spender msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude Approve-response.msg.html

(cl:defclass <Approve-response> (roslisp-msg-protocol:ros-message)
  ((txhash
    :reader txhash
    :initarg :txhash
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 32 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Approve-response (<Approve-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Approve-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Approve-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Approve-response> is deprecated: use ethereum_common-srv:Approve-response instead.")))

(cl:ensure-generic-function 'txhash-val :lambda-list '(m))
(cl:defmethod txhash-val ((m <Approve-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:txhash-val is deprecated.  Use ethereum_common-srv:txhash instead.")
  (txhash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Approve-response>) ostream)
  "Serializes a message object of type '<Approve-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'txhash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Approve-response>) istream)
  "Deserializes a message object of type '<Approve-response>"
  (cl:setf (cl:slot-value msg 'txhash) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'txhash)))
    (cl:dotimes (i 32)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Approve-response>)))
  "Returns string type for a service object of type '<Approve-response>"
  "ethereum_common/ApproveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approve-response)))
  "Returns string type for a service object of type 'Approve-response"
  "ethereum_common/ApproveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Approve-response>)))
  "Returns md5sum for a message object of type '<Approve-response>"
  "cf2aa6f2895c288e13b4e136d4e4a5fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Approve-response)))
  "Returns md5sum for a message object of type 'Approve-response"
  "cf2aa6f2895c288e13b4e136d4e4a5fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Approve-response>)))
  "Returns full string definition for message of type '<Approve-response>"
  (cl:format cl:nil "uint8[32] txhash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Approve-response)))
  "Returns full string definition for message of type 'Approve-response"
  (cl:format cl:nil "uint8[32] txhash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Approve-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'txhash) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Approve-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Approve-response
    (cl:cons ':txhash (txhash msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Approve)))
  'Approve-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Approve)))
  'Approve-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approve)))
  "Returns string type for a service object of type '<Approve>"
  "ethereum_common/Approve")