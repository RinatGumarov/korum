; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude Balance-request.msg.html

(cl:defclass <Balance-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Balance-request (<Balance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Balance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Balance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Balance-request> is deprecated: use ethereum_common-srv:Balance-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Balance-request>) ostream)
  "Serializes a message object of type '<Balance-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Balance-request>) istream)
  "Deserializes a message object of type '<Balance-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Balance-request>)))
  "Returns string type for a service object of type '<Balance-request>"
  "ethereum_common/BalanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Balance-request)))
  "Returns string type for a service object of type 'Balance-request"
  "ethereum_common/BalanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Balance-request>)))
  "Returns md5sum for a message object of type '<Balance-request>"
  "91627563a1e35c16c10754661905461e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Balance-request)))
  "Returns md5sum for a message object of type 'Balance-request"
  "91627563a1e35c16c10754661905461e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Balance-request>)))
  "Returns full string definition for message of type '<Balance-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Balance-request)))
  "Returns full string definition for message of type 'Balance-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Balance-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Balance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Balance-request
))
;//! \htmlinclude Balance-response.msg.html

(cl:defclass <Balance-response> (roslisp-msg-protocol:ros-message)
  ((balance
    :reader balance
    :initarg :balance
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass Balance-response (<Balance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Balance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Balance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<Balance-response> is deprecated: use ethereum_common-srv:Balance-response instead.")))

(cl:ensure-generic-function 'balance-val :lambda-list '(m))
(cl:defmethod balance-val ((m <Balance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:balance-val is deprecated.  Use ethereum_common-srv:balance instead.")
  (balance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Balance-response>) ostream)
  "Serializes a message object of type '<Balance-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'balance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Balance-response>) istream)
  "Deserializes a message object of type '<Balance-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'balance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Balance-response>)))
  "Returns string type for a service object of type '<Balance-response>"
  "ethereum_common/BalanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Balance-response)))
  "Returns string type for a service object of type 'Balance-response"
  "ethereum_common/BalanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Balance-response>)))
  "Returns md5sum for a message object of type '<Balance-response>"
  "91627563a1e35c16c10754661905461e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Balance-response)))
  "Returns md5sum for a message object of type 'Balance-response"
  "91627563a1e35c16c10754661905461e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Balance-response>)))
  "Returns full string definition for message of type '<Balance-response>"
  (cl:format cl:nil "UInt256 balance~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Balance-response)))
  "Returns full string definition for message of type 'Balance-response"
  (cl:format cl:nil "UInt256 balance~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Balance-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'balance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Balance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Balance-response
    (cl:cons ':balance (balance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Balance)))
  'Balance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Balance)))
  'Balance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Balance)))
  "Returns string type for a service object of type '<Balance>"
  "ethereum_common/Balance")