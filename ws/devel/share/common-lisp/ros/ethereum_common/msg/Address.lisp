; Auto-generated. Do not edit!


(cl:in-package ethereum_common-msg)


;//! \htmlinclude Address.msg.html

(cl:defclass <Address> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:string
    :initform ""))
)

(cl:defclass Address (<Address>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Address>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Address)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-msg:<Address> is deprecated: use ethereum_common-msg:Address instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <Address>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-msg:address-val is deprecated.  Use ethereum_common-msg:address instead.")
  (address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Address>) ostream)
  "Serializes a message object of type '<Address>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Address>) istream)
  "Deserializes a message object of type '<Address>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Address>)))
  "Returns string type for a message object of type '<Address>"
  "ethereum_common/Address")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Address)))
  "Returns string type for a message object of type 'Address"
  "ethereum_common/Address")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Address>)))
  "Returns md5sum for a message object of type '<Address>"
  "5bc6398c2d30daa431354525a4683624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Address)))
  "Returns md5sum for a message object of type 'Address"
  "5bc6398c2d30daa431354525a4683624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Address>)))
  "Returns full string definition for message of type '<Address>"
  (cl:format cl:nil "# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Address)))
  "Returns full string definition for message of type 'Address"
  (cl:format cl:nil "# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Address>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'address))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Address>))
  "Converts a ROS message object to a list"
  (cl:list 'Address
    (cl:cons ':address (address msg))
))
