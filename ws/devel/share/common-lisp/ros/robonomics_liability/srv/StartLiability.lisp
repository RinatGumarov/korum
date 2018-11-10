; Auto-generated. Do not edit!


(cl:in-package robonomics_liability-srv)


;//! \htmlinclude StartLiability-request.msg.html

(cl:defclass <StartLiability-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:string
    :initform ""))
)

(cl:defclass StartLiability-request (<StartLiability-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartLiability-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartLiability-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_liability-srv:<StartLiability-request> is deprecated: use robonomics_liability-srv:StartLiability-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <StartLiability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-srv:address-val is deprecated.  Use robonomics_liability-srv:address instead.")
  (address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartLiability-request>) ostream)
  "Serializes a message object of type '<StartLiability-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartLiability-request>) istream)
  "Deserializes a message object of type '<StartLiability-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartLiability-request>)))
  "Returns string type for a service object of type '<StartLiability-request>"
  "robonomics_liability/StartLiabilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartLiability-request)))
  "Returns string type for a service object of type 'StartLiability-request"
  "robonomics_liability/StartLiabilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartLiability-request>)))
  "Returns md5sum for a message object of type '<StartLiability-request>"
  "ebc07382abd5516bf503d6260b124af7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartLiability-request)))
  "Returns md5sum for a message object of type 'StartLiability-request"
  "ebc07382abd5516bf503d6260b124af7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartLiability-request>)))
  "Returns full string definition for message of type '<StartLiability-request>"
  (cl:format cl:nil "string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartLiability-request)))
  "Returns full string definition for message of type 'StartLiability-request"
  (cl:format cl:nil "string address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartLiability-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'address))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartLiability-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartLiability-request
    (cl:cons ':address (address msg))
))
;//! \htmlinclude StartLiability-response.msg.html

(cl:defclass <StartLiability-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass StartLiability-response (<StartLiability-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartLiability-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartLiability-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_liability-srv:<StartLiability-response> is deprecated: use robonomics_liability-srv:StartLiability-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StartLiability-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-srv:success-val is deprecated.  Use robonomics_liability-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <StartLiability-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-srv:msg-val is deprecated.  Use robonomics_liability-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartLiability-response>) ostream)
  "Serializes a message object of type '<StartLiability-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartLiability-response>) istream)
  "Deserializes a message object of type '<StartLiability-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartLiability-response>)))
  "Returns string type for a service object of type '<StartLiability-response>"
  "robonomics_liability/StartLiabilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartLiability-response)))
  "Returns string type for a service object of type 'StartLiability-response"
  "robonomics_liability/StartLiabilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartLiability-response>)))
  "Returns md5sum for a message object of type '<StartLiability-response>"
  "ebc07382abd5516bf503d6260b124af7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartLiability-response)))
  "Returns md5sum for a message object of type 'StartLiability-response"
  "ebc07382abd5516bf503d6260b124af7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartLiability-response>)))
  "Returns full string definition for message of type '<StartLiability-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartLiability-response)))
  "Returns full string definition for message of type 'StartLiability-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartLiability-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartLiability-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartLiability-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartLiability)))
  'StartLiability-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartLiability)))
  'StartLiability-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartLiability)))
  "Returns string type for a service object of type '<StartLiability>"
  "robonomics_liability/StartLiability")