; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude Allowance-request.msg.html

(cl:defclass <Allowance-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Allowance-request (<Allowance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Allowance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Allowance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Allowance-request> is deprecated: use ethereum_common-srv:Allowance-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Allowance-request>) ostream)
  "Serializes a message object of type '<Allowance-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Allowance-request>) istream)
  "Deserializes a message object of type '<Allowance-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Allowance-request>)))
  "Returns string type for a service object of type '<Allowance-request>"
  "ethereum_common/AllowanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Allowance-request)))
  "Returns string type for a service object of type 'Allowance-request"
  "ethereum_common/AllowanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Allowance-request>)))
  "Returns md5sum for a message object of type '<Allowance-request>"
  "e2d262a3aeb417f4eb11856b3be5f1c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Allowance-request)))
  "Returns md5sum for a message object of type 'Allowance-request"
  "e2d262a3aeb417f4eb11856b3be5f1c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Allowance-request>)))
  "Returns full string definition for message of type '<Allowance-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Allowance-request)))
  "Returns full string definition for message of type 'Allowance-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Allowance-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Allowance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Allowance-request
))
;//! \htmlinclude Allowance-response.msg.html

(cl:defclass <Allowance-response> (roslisp-msg-protocol:ros-message)
  ((amount
    :reader amount
    :initarg :amount
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass Allowance-response (<Allowance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Allowance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Allowance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Allowance-response> is deprecated: use ethereum_common-srv:Allowance-response instead.")))

(cl:ensure-generic-function 'amount-val :lambda-list '(m))
(cl:defmethod amount-val ((m <Allowance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:amount-val is deprecated.  Use ethereum_common-srv:amount instead.")
  (amount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Allowance-response>) ostream)
  "Serializes a message object of type '<Allowance-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'amount) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Allowance-response>) istream)
  "Deserializes a message object of type '<Allowance-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'amount) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Allowance-response>)))
  "Returns string type for a service object of type '<Allowance-response>"
  "ethereum_common/AllowanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Allowance-response)))
  "Returns string type for a service object of type 'Allowance-response"
  "ethereum_common/AllowanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Allowance-response>)))
  "Returns md5sum for a message object of type '<Allowance-response>"
  "e2d262a3aeb417f4eb11856b3be5f1c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Allowance-response)))
  "Returns md5sum for a message object of type 'Allowance-response"
  "e2d262a3aeb417f4eb11856b3be5f1c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Allowance-response>)))
  "Returns full string definition for message of type '<Allowance-response>"
  (cl:format cl:nil "UInt256 amount~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Allowance-response)))
  "Returns full string definition for message of type 'Allowance-response"
  (cl:format cl:nil "UInt256 amount~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Allowance-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'amount))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Allowance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Allowance-response
    (cl:cons ':amount (amount msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Allowance)))
  'Allowance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Allowance)))
  'Allowance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Allowance)))
  "Returns string type for a service object of type '<Allowance>"
  "ethereum_common/Allowance")