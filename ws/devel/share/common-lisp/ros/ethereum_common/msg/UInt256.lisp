; Auto-generated. Do not edit!


(cl:in-package ethereum_common-msg)


;//! \htmlinclude UInt256.msg.html

(cl:defclass <UInt256> (roslisp-msg-protocol:ros-message)
  ((uint256
    :reader uint256
    :initarg :uint256
    :type cl:string
    :initform ""))
)

(cl:defclass UInt256 (<UInt256>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UInt256>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UInt256)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-msg:<UInt256> is deprecated: use ethereum_common-msg:UInt256 instead.")))

(cl:ensure-generic-function 'uint256-val :lambda-list '(m))
(cl:defmethod uint256-val ((m <UInt256>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:uint256-val is deprecated.  Use ethereum_common-msg:uint256 instead.")
  (uint256 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UInt256>) ostream)
  "Serializes a message object of type '<UInt256>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uint256))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uint256))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UInt256>) istream)
  "Deserializes a message object of type '<UInt256>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uint256) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uint256) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UInt256>)))
  "Returns string type for a message object of type '<UInt256>"
  "ethereum_common/UInt256")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UInt256)))
  "Returns string type for a message object of type 'UInt256"
  "ethereum_common/UInt256")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UInt256>)))
  "Returns md5sum for a message object of type '<UInt256>"
  "d3e47bf4311da2c63d362b5eea4c389b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UInt256)))
  "Returns md5sum for a message object of type 'UInt256"
  "d3e47bf4311da2c63d362b5eea4c389b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UInt256>)))
  "Returns full string definition for message of type '<UInt256>"
  (cl:format cl:nil "# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UInt256)))
  "Returns full string definition for message of type 'UInt256"
  (cl:format cl:nil "# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UInt256>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uint256))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UInt256>))
  "Converts a ROS message object to a list"
  (cl:list 'UInt256
    (cl:cons ':uint256 (uint256 msg))
))
