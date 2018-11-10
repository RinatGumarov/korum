; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude BlockNumber-request.msg.html

(cl:defclass <BlockNumber-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BlockNumber-request (<BlockNumber-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlockNumber-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlockNumber-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<BlockNumber-request> is deprecated: use ethereum_common-srv:BlockNumber-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlockNumber-request>) ostream)
  "Serializes a message object of type '<BlockNumber-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlockNumber-request>) istream)
  "Deserializes a message object of type '<BlockNumber-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlockNumber-request>)))
  "Returns string type for a service object of type '<BlockNumber-request>"
  "ethereum_common/BlockNumberRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlockNumber-request)))
  "Returns string type for a service object of type 'BlockNumber-request"
  "ethereum_common/BlockNumberRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlockNumber-request>)))
  "Returns md5sum for a message object of type '<BlockNumber-request>"
  "9ea9c5dc974a67358629419455d31fec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlockNumber-request)))
  "Returns md5sum for a message object of type 'BlockNumber-request"
  "9ea9c5dc974a67358629419455d31fec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlockNumber-request>)))
  "Returns full string definition for message of type '<BlockNumber-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlockNumber-request)))
  "Returns full string definition for message of type 'BlockNumber-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlockNumber-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlockNumber-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BlockNumber-request
))
;//! \htmlinclude BlockNumber-response.msg.html

(cl:defclass <BlockNumber-response> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0))
)

(cl:defclass BlockNumber-response (<BlockNumber-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlockNumber-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlockNumber-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<BlockNumber-response> is deprecated: use ethereum_common-srv:BlockNumber-response instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <BlockNumber-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:number-val is deprecated.  Use ethereum_common-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlockNumber-response>) ostream)
  "Serializes a message object of type '<BlockNumber-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlockNumber-response>) istream)
  "Deserializes a message object of type '<BlockNumber-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlockNumber-response>)))
  "Returns string type for a service object of type '<BlockNumber-response>"
  "ethereum_common/BlockNumberResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlockNumber-response)))
  "Returns string type for a service object of type 'BlockNumber-response"
  "ethereum_common/BlockNumberResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlockNumber-response>)))
  "Returns md5sum for a message object of type '<BlockNumber-response>"
  "9ea9c5dc974a67358629419455d31fec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlockNumber-response)))
  "Returns md5sum for a message object of type 'BlockNumber-response"
  "9ea9c5dc974a67358629419455d31fec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlockNumber-response>)))
  "Returns full string definition for message of type '<BlockNumber-response>"
  (cl:format cl:nil "uint64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlockNumber-response)))
  "Returns full string definition for message of type 'BlockNumber-response"
  (cl:format cl:nil "uint64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlockNumber-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlockNumber-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BlockNumber-response
    (cl:cons ':number (number msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BlockNumber)))
  'BlockNumber-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BlockNumber)))
  'BlockNumber-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlockNumber)))
  "Returns string type for a service object of type '<BlockNumber>"
  "ethereum_common/BlockNumber")