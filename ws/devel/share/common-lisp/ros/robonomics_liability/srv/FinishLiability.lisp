; Auto-generated. Do not edit!


(cl:in-package robonomics_liability-srv)


;//! \htmlinclude FinishLiability-request.msg.html

(cl:defclass <FinishLiability-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FinishLiability-request (<FinishLiability-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinishLiability-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinishLiability-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_liability-srv:<FinishLiability-request> is deprecated: use robonomics_liability-srv:FinishLiability-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <FinishLiability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-srv:address-val is deprecated.  Use robonomics_liability-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FinishLiability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-srv:success-val is deprecated.  Use robonomics_liability-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinishLiability-request>) ostream)
  "Serializes a message object of type '<FinishLiability-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinishLiability-request>) istream)
  "Deserializes a message object of type '<FinishLiability-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FinishLiability-request>)))
  "Returns string type for a service object of type '<FinishLiability-request>"
  "robonomics_liability/FinishLiabilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinishLiability-request)))
  "Returns string type for a service object of type 'FinishLiability-request"
  "robonomics_liability/FinishLiabilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FinishLiability-request>)))
  "Returns md5sum for a message object of type '<FinishLiability-request>"
  "26b15e2de4e826d98955e2304f45fe00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinishLiability-request)))
  "Returns md5sum for a message object of type 'FinishLiability-request"
  "26b15e2de4e826d98955e2304f45fe00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinishLiability-request>)))
  "Returns full string definition for message of type '<FinishLiability-request>"
  (cl:format cl:nil "string address~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinishLiability-request)))
  "Returns full string definition for message of type 'FinishLiability-request"
  (cl:format cl:nil "string address~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinishLiability-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'address))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinishLiability-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FinishLiability-request
    (cl:cons ':address (address msg))
    (cl:cons ':success (success msg))
))
;//! \htmlinclude FinishLiability-response.msg.html

(cl:defclass <FinishLiability-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FinishLiability-response (<FinishLiability-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinishLiability-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinishLiability-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_liability-srv:<FinishLiability-response> is deprecated: use robonomics_liability-srv:FinishLiability-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinishLiability-response>) ostream)
  "Serializes a message object of type '<FinishLiability-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinishLiability-response>) istream)
  "Deserializes a message object of type '<FinishLiability-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FinishLiability-response>)))
  "Returns string type for a service object of type '<FinishLiability-response>"
  "robonomics_liability/FinishLiabilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinishLiability-response)))
  "Returns string type for a service object of type 'FinishLiability-response"
  "robonomics_liability/FinishLiabilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FinishLiability-response>)))
  "Returns md5sum for a message object of type '<FinishLiability-response>"
  "26b15e2de4e826d98955e2304f45fe00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinishLiability-response)))
  "Returns md5sum for a message object of type 'FinishLiability-response"
  "26b15e2de4e826d98955e2304f45fe00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinishLiability-response>)))
  "Returns full string definition for message of type '<FinishLiability-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinishLiability-response)))
  "Returns full string definition for message of type 'FinishLiability-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinishLiability-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinishLiability-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FinishLiability-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FinishLiability)))
  'FinishLiability-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FinishLiability)))
  'FinishLiability-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinishLiability)))
  "Returns string type for a service object of type '<FinishLiability>"
  "robonomics_liability/FinishLiability")