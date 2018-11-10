; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude AccountBalance-request.msg.html

(cl:defclass <AccountBalance-request> (roslisp-msg-protocol:ros-message)
  ((account
    :reader account
    :initarg :account
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address)))
)

(cl:defclass AccountBalance-request (<AccountBalance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccountBalance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccountBalance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<AccountBalance-request> is deprecated: use ethereum_common-srv:AccountBalance-request instead.")))

(cl:ensure-generic-function 'account-val :lambda-list '(m))
(cl:defmethod account-val ((m <AccountBalance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:account-val is deprecated.  Use ethereum_common-srv:account instead.")
  (account m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccountBalance-request>) ostream)
  "Serializes a message object of type '<AccountBalance-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'account) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccountBalance-request>) istream)
  "Deserializes a message object of type '<AccountBalance-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'account) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccountBalance-request>)))
  "Returns string type for a service object of type '<AccountBalance-request>"
  "ethereum_common/AccountBalanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccountBalance-request)))
  "Returns string type for a service object of type 'AccountBalance-request"
  "ethereum_common/AccountBalanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccountBalance-request>)))
  "Returns md5sum for a message object of type '<AccountBalance-request>"
  "0f8190e3a314b4f0b718e5fba37da225")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccountBalance-request)))
  "Returns md5sum for a message object of type 'AccountBalance-request"
  "0f8190e3a314b4f0b718e5fba37da225")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccountBalance-request>)))
  "Returns full string definition for message of type '<AccountBalance-request>"
  (cl:format cl:nil "Address account~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccountBalance-request)))
  "Returns full string definition for message of type 'AccountBalance-request"
  (cl:format cl:nil "Address account~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccountBalance-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'account))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccountBalance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AccountBalance-request
    (cl:cons ':account (account msg))
))
;//! \htmlinclude AccountBalance-response.msg.html

(cl:defclass <AccountBalance-response> (roslisp-msg-protocol:ros-message)
  ((balance
    :reader balance
    :initarg :balance
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass AccountBalance-response (<AccountBalance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccountBalance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccountBalance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<AccountBalance-response> is deprecated: use ethereum_common-srv:AccountBalance-response instead.")))

(cl:ensure-generic-function 'balance-val :lambda-list '(m))
(cl:defmethod balance-val ((m <AccountBalance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:balance-val is deprecated.  Use ethereum_common-srv:balance instead.")
  (balance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccountBalance-response>) ostream)
  "Serializes a message object of type '<AccountBalance-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'balance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccountBalance-response>) istream)
  "Deserializes a message object of type '<AccountBalance-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'balance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccountBalance-response>)))
  "Returns string type for a service object of type '<AccountBalance-response>"
  "ethereum_common/AccountBalanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccountBalance-response)))
  "Returns string type for a service object of type 'AccountBalance-response"
  "ethereum_common/AccountBalanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccountBalance-response>)))
  "Returns md5sum for a message object of type '<AccountBalance-response>"
  "0f8190e3a314b4f0b718e5fba37da225")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccountBalance-response)))
  "Returns md5sum for a message object of type 'AccountBalance-response"
  "0f8190e3a314b4f0b718e5fba37da225")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccountBalance-response>)))
  "Returns full string definition for message of type '<AccountBalance-response>"
  (cl:format cl:nil "UInt256 balance~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccountBalance-response)))
  "Returns full string definition for message of type 'AccountBalance-response"
  (cl:format cl:nil "UInt256 balance~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccountBalance-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'balance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccountBalance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AccountBalance-response
    (cl:cons ':balance (balance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AccountBalance)))
  'AccountBalance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AccountBalance)))
  'AccountBalance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccountBalance)))
  "Returns string type for a service object of type '<AccountBalance>"
  "ethereum_common/AccountBalance")