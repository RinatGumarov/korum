; Auto-generated. Do not edit!


(cl:in-package robonomics_msgs-msg)


;//! \htmlinclude Result.msg.html

(cl:defclass <Result> (roslisp-msg-protocol:ros-message)
  ((liability
    :reader liability
    :initarg :liability
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (signature
    :reader signature
    :initarg :signature
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Result (<Result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_msgs-msg:<Result> is deprecated: use robonomics_msgs-msg:Result instead.")))

(cl:ensure-generic-function 'liability-val :lambda-list '(m))
(cl:defmethod liability-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:liability-val is deprecated.  Use robonomics_msgs-msg:liability instead.")
  (liability m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:result-val is deprecated.  Use robonomics_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:success-val is deprecated.  Use robonomics_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'signature-val :lambda-list '(m))
(cl:defmethod signature-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:signature-val is deprecated.  Use robonomics_msgs-msg:signature instead.")
  (signature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Result>) ostream)
  "Serializes a message object of type '<Result>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'liability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'liability))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'signature))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Result>) istream)
  "Deserializes a message object of type '<Result>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'liability) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'liability) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Result>)))
  "Returns string type for a message object of type '<Result>"
  "robonomics_msgs/Result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Result)))
  "Returns string type for a message object of type 'Result"
  "robonomics_msgs/Result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Result>)))
  "Returns md5sum for a message object of type '<Result>"
  "779c689203741480a2063956e588f667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Result)))
  "Returns md5sum for a message object of type 'Result"
  "779c689203741480a2063956e588f667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Result>)))
  "Returns full string definition for message of type '<Result>"
  (cl:format cl:nil "# Result liability~%string liability     # address~%# Result IPFS hash~%string result       # base58~%# Executed successfully flag~%bool success~%# Result signature~%uint8[] signature    # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Result)))
  "Returns full string definition for message of type 'Result"
  (cl:format cl:nil "# Result liability~%string liability     # address~%# Result IPFS hash~%string result       # base58~%# Executed successfully flag~%bool success~%# Result signature~%uint8[] signature    # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Result>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'liability))
     4 (cl:length (cl:slot-value msg 'result))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Result>))
  "Converts a ROS message object to a list"
  (cl:list 'Result
    (cl:cons ':liability (liability msg))
    (cl:cons ':result (result msg))
    (cl:cons ':success (success msg))
    (cl:cons ':signature (signature msg))
))
