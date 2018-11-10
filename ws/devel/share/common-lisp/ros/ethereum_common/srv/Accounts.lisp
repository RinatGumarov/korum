; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude Accounts-request.msg.html

(cl:defclass <Accounts-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Accounts-request (<Accounts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Accounts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Accounts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Accounts-request> is deprecated: use ethereum_common-srv:Accounts-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Accounts-request>) ostream)
  "Serializes a message object of type '<Accounts-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Accounts-request>) istream)
  "Deserializes a message object of type '<Accounts-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Accounts-request>)))
  "Returns string type for a service object of type '<Accounts-request>"
  "ethereum_common/AccountsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Accounts-request)))
  "Returns string type for a service object of type 'Accounts-request"
  "ethereum_common/AccountsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Accounts-request>)))
  "Returns md5sum for a message object of type '<Accounts-request>"
  "031c4bb89ac5ec75fbacab5f05cfa129")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Accounts-request)))
  "Returns md5sum for a message object of type 'Accounts-request"
  "031c4bb89ac5ec75fbacab5f05cfa129")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Accounts-request>)))
  "Returns full string definition for message of type '<Accounts-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Accounts-request)))
  "Returns full string definition for message of type 'Accounts-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Accounts-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Accounts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Accounts-request
))
;//! \htmlinclude Accounts-response.msg.html

(cl:defclass <Accounts-response> (roslisp-msg-protocol:ros-message)
  ((accounts
    :reader accounts
    :initarg :accounts
    :type (cl:vector ethereum_common-msg:Address)
   :initform (cl:make-array 0 :element-type 'ethereum_common-msg:Address :initial-element (cl:make-instance 'ethereum_common-msg:Address))))
)

(cl:defclass Accounts-response (<Accounts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Accounts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Accounts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Accounts-response> is deprecated: use ethereum_common-srv:Accounts-response instead.")))

(cl:ensure-generic-function 'accounts-val :lambda-list '(m))
(cl:defmethod accounts-val ((m <Accounts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:accounts-val is deprecated.  Use ethereum_common-srv:accounts instead.")
  (accounts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Accounts-response>) ostream)
  "Serializes a message object of type '<Accounts-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'accounts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'accounts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Accounts-response>) istream)
  "Deserializes a message object of type '<Accounts-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'accounts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'accounts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ethereum_common-msg:Address))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Accounts-response>)))
  "Returns string type for a service object of type '<Accounts-response>"
  "ethereum_common/AccountsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Accounts-response)))
  "Returns string type for a service object of type 'Accounts-response"
  "ethereum_common/AccountsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Accounts-response>)))
  "Returns md5sum for a message object of type '<Accounts-response>"
  "031c4bb89ac5ec75fbacab5f05cfa129")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Accounts-response)))
  "Returns md5sum for a message object of type 'Accounts-response"
  "031c4bb89ac5ec75fbacab5f05cfa129")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Accounts-response>)))
  "Returns full string definition for message of type '<Accounts-response>"
  (cl:format cl:nil "Address[] accounts~%~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Accounts-response)))
  "Returns full string definition for message of type 'Accounts-response"
  (cl:format cl:nil "Address[] accounts~%~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Accounts-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'accounts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Accounts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Accounts-response
    (cl:cons ':accounts (accounts msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Accounts)))
  'Accounts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Accounts)))
  'Accounts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Accounts)))
  "Returns string type for a service object of type '<Accounts>"
  "ethereum_common/Accounts")