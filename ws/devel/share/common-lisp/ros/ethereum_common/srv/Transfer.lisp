; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude Transfer-request.msg.html

(cl:defclass <Transfer-request> (roslisp-msg-protocol:ros-message)
  ((to
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

(cl:defclass Transfer-request (<Transfer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transfer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transfer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Transfer-request> is deprecated: use ethereum_common-srv:Transfer-request instead.")))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <Transfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:to-val is deprecated.  Use ethereum_common-srv:to instead.")
  (to m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Transfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:value-val is deprecated.  Use ethereum_common-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transfer-request>) ostream)
  "Serializes a message object of type '<Transfer-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'to) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transfer-request>) istream)
  "Deserializes a message object of type '<Transfer-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'to) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transfer-request>)))
  "Returns string type for a service object of type '<Transfer-request>"
  "ethereum_common/TransferRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transfer-request)))
  "Returns string type for a service object of type 'Transfer-request"
  "ethereum_common/TransferRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transfer-request>)))
  "Returns md5sum for a message object of type '<Transfer-request>"
  "3174e907a7a184dbf8e5563f18f0c467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transfer-request)))
  "Returns md5sum for a message object of type 'Transfer-request"
  "3174e907a7a184dbf8e5563f18f0c467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transfer-request>)))
  "Returns full string definition for message of type '<Transfer-request>"
  (cl:format cl:nil "Address to~%UInt256 value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transfer-request)))
  "Returns full string definition for message of type 'Transfer-request"
  (cl:format cl:nil "Address to~%UInt256 value~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transfer-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'to))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transfer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Transfer-request
    (cl:cons ':to (to msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude Transfer-response.msg.html

(cl:defclass <Transfer-response> (roslisp-msg-protocol:ros-message)
  ((txhash
    :reader txhash
    :initarg :txhash
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 32 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Transfer-response (<Transfer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transfer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transfer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Transfer-response> is deprecated: use ethereum_common-srv:Transfer-response instead.")))

(cl:ensure-generic-function 'txhash-val :lambda-list '(m))
(cl:defmethod txhash-val ((m <Transfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:txhash-val is deprecated.  Use ethereum_common-srv:txhash instead.")
  (txhash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transfer-response>) ostream)
  "Serializes a message object of type '<Transfer-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'txhash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transfer-response>) istream)
  "Deserializes a message object of type '<Transfer-response>"
  (cl:setf (cl:slot-value msg 'txhash) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'txhash)))
    (cl:dotimes (i 32)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transfer-response>)))
  "Returns string type for a service object of type '<Transfer-response>"
  "ethereum_common/TransferResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transfer-response)))
  "Returns string type for a service object of type 'Transfer-response"
  "ethereum_common/TransferResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transfer-response>)))
  "Returns md5sum for a message object of type '<Transfer-response>"
  "3174e907a7a184dbf8e5563f18f0c467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transfer-response)))
  "Returns md5sum for a message object of type 'Transfer-response"
  "3174e907a7a184dbf8e5563f18f0c467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transfer-response>)))
  "Returns full string definition for message of type '<Transfer-response>"
  (cl:format cl:nil "uint8[32] txhash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transfer-response)))
  "Returns full string definition for message of type 'Transfer-response"
  (cl:format cl:nil "uint8[32] txhash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transfer-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'txhash) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transfer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Transfer-response
    (cl:cons ':txhash (txhash msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Transfer)))
  'Transfer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Transfer)))
  'Transfer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transfer)))
  "Returns string type for a service object of type '<Transfer>"
  "ethereum_common/Transfer")