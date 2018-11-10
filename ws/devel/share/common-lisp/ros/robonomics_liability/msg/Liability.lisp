; Auto-generated. Do not edit!


(cl:in-package robonomics_liability-msg)


;//! \htmlinclude Liability.msg.html

(cl:defclass <Liability> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:string
    :initform "")
   (model
    :reader model
    :initarg :model
    :type cl:string
    :initform "")
   (objective
    :reader objective
    :initarg :objective
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (promisee
    :reader promisee
    :initarg :promisee
    :type cl:string
    :initform "")
   (promisor
    :reader promisor
    :initarg :promisor
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
   (validatorFee
    :reader validatorFee
    :initarg :validatorFee
    :type cl:integer
    :initform 0))
)

(cl:defclass Liability (<Liability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Liability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Liability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_liability-msg:<Liability> is deprecated: use robonomics_liability-msg:Liability instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:address-val is deprecated.  Use robonomics_liability-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:model-val is deprecated.  Use robonomics_liability-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'objective-val :lambda-list '(m))
(cl:defmethod objective-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:objective-val is deprecated.  Use robonomics_liability-msg:objective instead.")
  (objective m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:result-val is deprecated.  Use robonomics_liability-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'promisee-val :lambda-list '(m))
(cl:defmethod promisee-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:promisee-val is deprecated.  Use robonomics_liability-msg:promisee instead.")
  (promisee m))

(cl:ensure-generic-function 'promisor-val :lambda-list '(m))
(cl:defmethod promisor-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:promisor-val is deprecated.  Use robonomics_liability-msg:promisor instead.")
  (promisor m))

(cl:ensure-generic-function 'token-val :lambda-list '(m))
(cl:defmethod token-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:token-val is deprecated.  Use robonomics_liability-msg:token instead.")
  (token m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:cost-val is deprecated.  Use robonomics_liability-msg:cost instead.")
  (cost m))

(cl:ensure-generic-function 'validator-val :lambda-list '(m))
(cl:defmethod validator-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:validator-val is deprecated.  Use robonomics_liability-msg:validator instead.")
  (validator m))

(cl:ensure-generic-function 'validatorFee-val :lambda-list '(m))
(cl:defmethod validatorFee-val ((m <Liability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_liability-msg:validatorFee-val is deprecated.  Use robonomics_liability-msg:validatorFee instead.")
  (validatorFee m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Liability>) ostream)
  "Serializes a message object of type '<Liability>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'promisee))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'promisee))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'promisor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'promisor))
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
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'cost)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'validatorFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'validatorFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'validatorFee)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'validatorFee)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Liability>) istream)
  "Deserializes a message object of type '<Liability>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'promisee) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'promisee) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'promisor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'promisor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'cost)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'validatorFee)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Liability>)))
  "Returns string type for a message object of type '<Liability>"
  "robonomics_liability/Liability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Liability)))
  "Returns string type for a message object of type 'Liability"
  "robonomics_liability/Liability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Liability>)))
  "Returns md5sum for a message object of type '<Liability>"
  "bfbed1b3b614dbb05af016d2c1c4cde6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Liability)))
  "Returns md5sum for a message object of type 'Liability"
  "bfbed1b3b614dbb05af016d2c1c4cde6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Liability>)))
  "Returns full string definition for message of type '<Liability>"
  (cl:format cl:nil "string address~%string model~%string objective~%string result~%string promisee~%string promisor~%string token~%uint64 cost~%string validator~%uint64 validatorFee~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Liability)))
  "Returns full string definition for message of type 'Liability"
  (cl:format cl:nil "string address~%string model~%string objective~%string result~%string promisee~%string promisor~%string token~%uint64 cost~%string validator~%uint64 validatorFee~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Liability>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'address))
     4 (cl:length (cl:slot-value msg 'model))
     4 (cl:length (cl:slot-value msg 'objective))
     4 (cl:length (cl:slot-value msg 'result))
     4 (cl:length (cl:slot-value msg 'promisee))
     4 (cl:length (cl:slot-value msg 'promisor))
     4 (cl:length (cl:slot-value msg 'token))
     8
     4 (cl:length (cl:slot-value msg 'validator))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Liability>))
  "Converts a ROS message object to a list"
  (cl:list 'Liability
    (cl:cons ':address (address msg))
    (cl:cons ':model (model msg))
    (cl:cons ':objective (objective msg))
    (cl:cons ':result (result msg))
    (cl:cons ':promisee (promisee msg))
    (cl:cons ':promisor (promisor msg))
    (cl:cons ':token (token msg))
    (cl:cons ':cost (cost msg))
    (cl:cons ':validator (validator msg))
    (cl:cons ':validatorFee (validatorFee msg))
))
