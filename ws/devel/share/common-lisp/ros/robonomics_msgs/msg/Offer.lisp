; Auto-generated. Do not edit!


(cl:in-package robonomics_msgs-msg)


;//! \htmlinclude Offer.msg.html

(cl:defclass <Offer> (roslisp-msg-protocol:ros-message)
  ((model
    :reader model
    :initarg :model
    :type cl:string
    :initform "")
   (objective
    :reader objective
    :initarg :objective
    :type cl:string
    :initform "")
   (token
    :reader token
    :initarg :token
    :type cl:string
    :initform "")
   (cost
    :reader cost
    :initarg :cost
    :type cl:integer
    :initform 0)
   (validator
    :reader validator
    :initarg :validator
    :type cl:string
    :initform "")
   (lighthouse
    :reader lighthouse
    :initarg :lighthouse
    :type cl:string
    :initform "")
   (lighthouseFee
    :reader lighthouseFee
    :initarg :lighthouseFee
    :type cl:integer
    :initform 0)
   (deadline
    :reader deadline
    :initarg :deadline
    :type cl:integer
    :initform 0)
   (nonce
    :reader nonce
    :initarg :nonce
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (signature
    :reader signature
    :initarg :signature
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Offer (<Offer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Offer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Offer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_msgs-msg:<Offer> is deprecated: use robonomics_msgs-msg:Offer instead.")))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:model-val is deprecated.  Use robonomics_msgs-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'objective-val :lambda-list '(m))
(cl:defmethod objective-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:objective-val is deprecated.  Use robonomics_msgs-msg:objective instead.")
  (objective m))

(cl:ensure-generic-function 'token-val :lambda-list '(m))
(cl:defmethod token-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:token-val is deprecated.  Use robonomics_msgs-msg:token instead.")
  (token m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:cost-val is deprecated.  Use robonomics_msgs-msg:cost instead.")
  (cost m))

(cl:ensure-generic-function 'validator-val :lambda-list '(m))
(cl:defmethod validator-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:validator-val is deprecated.  Use robonomics_msgs-msg:validator instead.")
  (validator m))

(cl:ensure-generic-function 'lighthouse-val :lambda-list '(m))
(cl:defmethod lighthouse-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:lighthouse-val is deprecated.  Use robonomics_msgs-msg:lighthouse instead.")
  (lighthouse m))

(cl:ensure-generic-function 'lighthouseFee-val :lambda-list '(m))
(cl:defmethod lighthouseFee-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:lighthouseFee-val is deprecated.  Use robonomics_msgs-msg:lighthouseFee instead.")
  (lighthouseFee m))

(cl:ensure-generic-function 'deadline-val :lambda-list '(m))
(cl:defmethod deadline-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:deadline-val is deprecated.  Use robonomics_msgs-msg:deadline instead.")
  (deadline m))

(cl:ensure-generic-function 'nonce-val :lambda-list '(m))
(cl:defmethod nonce-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:nonce-val is deprecated.  Use robonomics_msgs-msg:nonce instead.")
  (nonce m))

(cl:ensure-generic-function 'signature-val :lambda-list '(m))
(cl:defmethod signature-val ((m <Offer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:signature-val is deprecated.  Use robonomics_msgs-msg:signature instead.")
  (signature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Offer>) ostream)
  "Serializes a message object of type '<Offer>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'objective))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'objective))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'token))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cost)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'validator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'validator))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lighthouse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lighthouse))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lighthouseFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lighthouseFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lighthouseFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lighthouseFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deadline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'deadline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'deadline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'deadline)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nonce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'nonce))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'signature))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Offer>) istream)
  "Deserializes a message object of type '<Offer>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objective) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'objective) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'token) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'token) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cost)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'validator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'validator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lighthouse) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lighthouse) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lighthouseFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lighthouseFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lighthouseFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lighthouseFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deadline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'deadline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'deadline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'deadline)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nonce) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nonce)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Offer>)))
  "Returns string type for a message object of type '<Offer>"
  "robonomics_msgs/Offer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Offer)))
  "Returns string type for a message object of type 'Offer"
  "robonomics_msgs/Offer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Offer>)))
  "Returns md5sum for a message object of type '<Offer>"
  "cca2086bb0402e8053192ad7c1e153dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Offer)))
  "Returns md5sum for a message object of type 'Offer"
  "cca2086bb0402e8053192ad7c1e153dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Offer>)))
  "Returns full string definition for message of type '<Offer>"
  (cl:format cl:nil "# Behaviour model~%string model        # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token        # address~%# Execution cost~%uint32 cost         # int~%# Validator network address~%string validator     # address~%# lighthouse network address~%string lighthouse    #address~%# Settlement fee~%uint32 lighthouseFee # int ~%# Deadline block number~%uint32 deadline~%# Order nonce value ~%uint8[] nonce       # hex~%# Order signature~%uint8[] signature   # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Offer)))
  "Returns full string definition for message of type 'Offer"
  (cl:format cl:nil "# Behaviour model~%string model        # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token        # address~%# Execution cost~%uint32 cost         # int~%# Validator network address~%string validator     # address~%# lighthouse network address~%string lighthouse    #address~%# Settlement fee~%uint32 lighthouseFee # int ~%# Deadline block number~%uint32 deadline~%# Order nonce value ~%uint8[] nonce       # hex~%# Order signature~%uint8[] signature   # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Offer>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model))
     4 (cl:length (cl:slot-value msg 'objective))
     4 (cl:length (cl:slot-value msg 'token))
     4
     4 (cl:length (cl:slot-value msg 'validator))
     4 (cl:length (cl:slot-value msg 'lighthouse))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nonce) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Offer>))
  "Converts a ROS message object to a list"
  (cl:list 'Offer
    (cl:cons ':model (model msg))
    (cl:cons ':objective (objective msg))
    (cl:cons ':token (token msg))
    (cl:cons ':cost (cost msg))
    (cl:cons ':validator (validator msg))
    (cl:cons ':lighthouse (lighthouse msg))
    (cl:cons ':lighthouseFee (lighthouseFee msg))
    (cl:cons ':deadline (deadline msg))
    (cl:cons ':nonce (nonce msg))
    (cl:cons ':signature (signature msg))
))
