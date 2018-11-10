; Auto-generated. Do not edit!


(cl:in-package robonomics_msgs-msg)


;//! \htmlinclude Demand.msg.html

(cl:defclass <Demand> (roslisp-msg-protocol:ros-message)
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
   (lighthouse
    :reader lighthouse
    :initarg :lighthouse
    :type cl:string
    :initform "")
   (validator
    :reader validator
    :initarg :validator
    :type cl:string
    :initform "")
   (validatorFee
    :reader validatorFee
    :initarg :validatorFee
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

(cl:defclass Demand (<Demand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Demand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Demand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_msgs-msg:<Demand> is deprecated: use robonomics_msgs-msg:Demand instead.")))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:model-val is deprecated.  Use robonomics_msgs-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'objective-val :lambda-list '(m))
(cl:defmethod objective-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:objective-val is deprecated.  Use robonomics_msgs-msg:objective instead.")
  (objective m))

(cl:ensure-generic-function 'token-val :lambda-list '(m))
(cl:defmethod token-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:token-val is deprecated.  Use robonomics_msgs-msg:token instead.")
  (token m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:cost-val is deprecated.  Use robonomics_msgs-msg:cost instead.")
  (cost m))

(cl:ensure-generic-function 'lighthouse-val :lambda-list '(m))
(cl:defmethod lighthouse-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:lighthouse-val is deprecated.  Use robonomics_msgs-msg:lighthouse instead.")
  (lighthouse m))

(cl:ensure-generic-function 'validator-val :lambda-list '(m))
(cl:defmethod validator-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:validator-val is deprecated.  Use robonomics_msgs-msg:validator instead.")
  (validator m))

(cl:ensure-generic-function 'validatorFee-val :lambda-list '(m))
(cl:defmethod validatorFee-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:validatorFee-val is deprecated.  Use robonomics_msgs-msg:validatorFee instead.")
  (validatorFee m))

(cl:ensure-generic-function 'deadline-val :lambda-list '(m))
(cl:defmethod deadline-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:deadline-val is deprecated.  Use robonomics_msgs-msg:deadline instead.")
  (deadline m))

(cl:ensure-generic-function 'nonce-val :lambda-list '(m))
(cl:defmethod nonce-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:nonce-val is deprecated.  Use robonomics_msgs-msg:nonce instead.")
  (nonce m))

(cl:ensure-generic-function 'signature-val :lambda-list '(m))
(cl:defmethod signature-val ((m <Demand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_msgs-msg:signature-val is deprecated.  Use robonomics_msgs-msg:signature instead.")
  (signature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Demand>) ostream)
  "Serializes a message object of type '<Demand>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lighthouse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lighthouse))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'validator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'validator))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'validatorFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'validatorFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'validatorFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'validatorFee)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Demand>) istream)
  "Deserializes a message object of type '<Demand>"
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
      (cl:setf (cl:slot-value msg 'lighthouse) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lighthouse) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'validator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'validator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Demand>)))
  "Returns string type for a message object of type '<Demand>"
  "robonomics_msgs/Demand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Demand)))
  "Returns string type for a message object of type 'Demand"
  "robonomics_msgs/Demand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Demand>)))
  "Returns md5sum for a message object of type '<Demand>"
  "ec1f8d196072d4b64ef2c348c1904806")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Demand)))
  "Returns md5sum for a message object of type 'Demand"
  "ec1f8d196072d4b64ef2c348c1904806")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Demand>)))
  "Returns full string definition for message of type '<Demand>"
  (cl:format cl:nil "# Behaviour model~%string model         # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token         # address~%# Execution cost~%uint32 cost          # int~%# lighthouse network address~%string lighthouse    #address~%# Validator network address~%string validator     # address~%# Validator network fee~%uint32 validatorFee  # int ~%# Deadline block number~%uint32 deadline      # int~%# Order nonce value~%uint8[] nonce        # hex ~%# Order signature~%uint8[] signature    # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Demand)))
  "Returns full string definition for message of type 'Demand"
  (cl:format cl:nil "# Behaviour model~%string model         # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token         # address~%# Execution cost~%uint32 cost          # int~%# lighthouse network address~%string lighthouse    #address~%# Validator network address~%string validator     # address~%# Validator network fee~%uint32 validatorFee  # int ~%# Deadline block number~%uint32 deadline      # int~%# Order nonce value~%uint8[] nonce        # hex ~%# Order signature~%uint8[] signature    # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Demand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model))
     4 (cl:length (cl:slot-value msg 'objective))
     4 (cl:length (cl:slot-value msg 'token))
     4
     4 (cl:length (cl:slot-value msg 'lighthouse))
     4 (cl:length (cl:slot-value msg 'validator))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nonce) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Demand>))
  "Converts a ROS message object to a list"
  (cl:list 'Demand
    (cl:cons ':model (model msg))
    (cl:cons ':objective (objective msg))
    (cl:cons ':token (token msg))
    (cl:cons ':cost (cost msg))
    (cl:cons ':lighthouse (lighthouse msg))
    (cl:cons ':validator (validator msg))
    (cl:cons ':validatorFee (validatorFee msg))
    (cl:cons ':deadline (deadline msg))
    (cl:cons ':nonce (nonce msg))
    (cl:cons ':signature (signature msg))
))
