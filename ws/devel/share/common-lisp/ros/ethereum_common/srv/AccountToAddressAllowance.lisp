; Auto-generated. Do not edit!


(cl:in-package ethereum_common-srv)


;//! \htmlinclude AccountToAddressAllowance-request.msg.html

(cl:defclass <AccountToAddressAllowance-request> (roslisp-msg-protocol:ros-message)
  ((account
    :reader account
    :initarg :account
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address))
   (to
    :reader to
    :initarg :to
    :type ethereum_common-msg:Address
    :initform (cl:make-instance 'ethereum_common-msg:Address)))
)

(cl:defclass AccountToAddressAllowance-request (<AccountToAddressAllowance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccountToAddressAllowance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccountToAddressAllowance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<AccountToAddressAllowance-request> is deprecated: use ethereum_common-srv:AccountToAddressAllowance-request instead.")))

(cl:ensure-generic-function 'account-val :lambda-list '(m))
(cl:defmethod account-val ((m <AccountToAddressAllowance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:account-val is deprecated.  Use ethereum_common-srv:account instead.")
  (account m))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <AccountToAddressAllowance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:to-val is deprecated.  Use ethereum_common-srv:to instead.")
  (to m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccountToAddressAllowance-request>) ostream)
  "Serializes a message object of type '<AccountToAddressAllowance-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'account) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'to) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccountToAddressAllowance-request>) istream)
  "Deserializes a message object of type '<AccountToAddressAllowance-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'account) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'to) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccountToAddressAllowance-request>)))
  "Returns string type for a service object of type '<AccountToAddressAllowance-request>"
  "ethereum_common/AccountToAddressAllowanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccountToAddressAllowance-request)))
  "Returns string type for a service object of type 'AccountToAddressAllowance-request"
  "ethereum_common/AccountToAddressAllowanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccountToAddressAllowance-request>)))
  "Returns md5sum for a message object of type '<AccountToAddressAllowance-request>"
  "bb0229e808c1117ea0065740cd6cdb83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccountToAddressAllowance-request)))
  "Returns md5sum for a message object of type 'AccountToAddressAllowance-request"
  "bb0229e808c1117ea0065740cd6cdb83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccountToAddressAllowance-request>)))
  "Returns full string definition for message of type '<AccountToAddressAllowance-request>"
  (cl:format cl:nil "Address account~%Address to~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccountToAddressAllowance-request)))
  "Returns full string definition for message of type 'AccountToAddressAllowance-request"
  (cl:format cl:nil "Address account~%Address to~%~%================================================================================~%MSG: ethereum_common/Address~%# Ethereum address message~%string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccountToAddressAllowance-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'account))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'to))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccountToAddressAllowance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AccountToAddressAllowance-request
    (cl:cons ':account (account msg))
    (cl:cons ':to (to msg))
))
;//! \htmlinclude AccountToAddressAllowance-response.msg.html

(cl:defclass <AccountToAddressAllowance-response> (roslisp-msg-protocol:ros-message)
  ((amount
    :reader amount
    :initarg :amount
    :type ethereum_common-msg:UInt256
    :initform (cl:make-instance 'ethereum_common-msg:UInt256)))
)

(cl:defclass AccountToAddressAllowance-response (<AccountToAddressAllowance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccountToAddressAllowance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccountToAddressAllowance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethereum_common-srv:<AccountToAddressAllowance-response> is deprecated: use ethereum_common-srv:AccountToAddressAllowance-response instead.")))

(cl:ensure-generic-function 'amount-val :lambda-list '(m))
(cl:defmethod amount-val ((m <AccountToAddressAllowance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethereum_common-srv:amount-val is deprecated.  Use ethereum_common-srv:amount instead.")
  (amount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccountToAddressAllowance-response>) ostream)
  "Serializes a message object of type '<AccountToAddressAllowance-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'amount) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccountToAddressAllowance-response>) istream)
  "Deserializes a message object of type '<AccountToAddressAllowance-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'amount) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccountToAddressAllowance-response>)))
  "Returns string type for a service object of type '<AccountToAddressAllowance-response>"
  "ethereum_common/AccountToAddressAllowanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccountToAddressAllowance-response)))
  "Returns string type for a service object of type 'AccountToAddressAllowance-response"
  "ethereum_common/AccountToAddressAllowanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccountToAddressAllowance-response>)))
  "Returns md5sum for a message object of type '<AccountToAddressAllowance-response>"
  "bb0229e808c1117ea0065740cd6cdb83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccountToAddressAllowance-response)))
  "Returns md5sum for a message object of type 'AccountToAddressAllowance-response"
  "bb0229e808c1117ea0065740cd6cdb83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccountToAddressAllowance-response>)))
  "Returns full string definition for message of type '<AccountToAddressAllowance-response>"
  (cl:format cl:nil "UInt256 amount~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccountToAddressAllowance-response)))
  "Returns full string definition for message of type 'AccountToAddressAllowance-response"
  (cl:format cl:nil "UInt256 amount~%~%================================================================================~%MSG: ethereum_common/UInt256~%# 256bit unisgned integer~%string uint256~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccountToAddressAllowance-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'amount))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccountToAddressAllowance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AccountToAddressAllowance-response
    (cl:cons ':amount (amount msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AccountToAddressAllowance)))
  'AccountToAddressAllowance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AccountToAddressAllowance)))
  'AccountToAddressAllowance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccountToAddressAllowance)))
  "Returns string type for a service object of type '<AccountToAddressAllowance>"
  "ethereum_common/AccountToAddressAllowance")