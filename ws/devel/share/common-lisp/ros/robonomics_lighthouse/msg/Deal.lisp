; Auto-generated. Do not edit!


(cl:in-package robonomics_lighthouse-msg)


;//! \htmlinclude Deal.msg.html

(cl:defclass <Deal> (roslisp-msg-protocol:ros-message)
  ((demand
    :reader demand
    :initarg :demand
    :type robonomics_msgs-msg:Demand
    :initform (cl:make-instance 'robonomics_msgs-msg:Demand))
   (offer
    :reader offer
    :initarg :offer
    :type robonomics_msgs-msg:Offer
    :initform (cl:make-instance 'robonomics_msgs-msg:Offer)))
)

(cl:defclass Deal (<Deal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robonomics_lighthouse-msg:<Deal> is deprecated: use robonomics_lighthouse-msg:Deal instead.")))

(cl:ensure-generic-function 'demand-val :lambda-list '(m))
(cl:defmethod demand-val ((m <Deal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_lighthouse-msg:demand-val is deprecated.  Use robonomics_lighthouse-msg:demand instead.")
  (demand m))

(cl:ensure-generic-function 'offer-val :lambda-list '(m))
(cl:defmethod offer-val ((m <Deal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robonomics_lighthouse-msg:offer-val is deprecated.  Use robonomics_lighthouse-msg:offer instead.")
  (offer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deal>) ostream)
  "Serializes a message object of type '<Deal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'demand) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offer) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deal>) istream)
  "Deserializes a message object of type '<Deal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'demand) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offer) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deal>)))
  "Returns string type for a message object of type '<Deal>"
  "robonomics_lighthouse/Deal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deal)))
  "Returns string type for a message object of type 'Deal"
  "robonomics_lighthouse/Deal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deal>)))
  "Returns md5sum for a message object of type '<Deal>"
  "4b47773dbfb8dcc972a397366b3f647c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deal)))
  "Returns md5sum for a message object of type 'Deal"
  "4b47773dbfb8dcc972a397366b3f647c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deal>)))
  "Returns full string definition for message of type '<Deal>"
  (cl:format cl:nil "robonomics_msgs/Demand demand ~%robonomics_msgs/Offer  offer ~%~%================================================================================~%MSG: robonomics_msgs/Demand~%# Behaviour model~%string model         # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token         # address~%# Execution cost~%uint32 cost          # int~%# lighthouse network address~%string lighthouse    #address~%# Validator network address~%string validator     # address~%# Validator network fee~%uint32 validatorFee  # int ~%# Deadline block number~%uint32 deadline      # int~%# Order nonce value~%uint8[] nonce        # hex ~%# Order signature~%uint8[] signature    # hex~%~%================================================================================~%MSG: robonomics_msgs/Offer~%# Behaviour model~%string model        # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token        # address~%# Execution cost~%uint32 cost         # int~%# Validator network address~%string validator     # address~%# lighthouse network address~%string lighthouse    #address~%# Settlement fee~%uint32 lighthouseFee # int ~%# Deadline block number~%uint32 deadline~%# Order nonce value ~%uint8[] nonce       # hex~%# Order signature~%uint8[] signature   # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deal)))
  "Returns full string definition for message of type 'Deal"
  (cl:format cl:nil "robonomics_msgs/Demand demand ~%robonomics_msgs/Offer  offer ~%~%================================================================================~%MSG: robonomics_msgs/Demand~%# Behaviour model~%string model         # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token         # address~%# Execution cost~%uint32 cost          # int~%# lighthouse network address~%string lighthouse    #address~%# Validator network address~%string validator     # address~%# Validator network fee~%uint32 validatorFee  # int ~%# Deadline block number~%uint32 deadline      # int~%# Order nonce value~%uint8[] nonce        # hex ~%# Order signature~%uint8[] signature    # hex~%~%================================================================================~%MSG: robonomics_msgs/Offer~%# Behaviour model~%string model        # Base58 ~%# Task~%string objective     # Base58~%# Operational token~%string token        # address~%# Execution cost~%uint32 cost         # int~%# Validator network address~%string validator     # address~%# lighthouse network address~%string lighthouse    #address~%# Settlement fee~%uint32 lighthouseFee # int ~%# Deadline block number~%uint32 deadline~%# Order nonce value ~%uint8[] nonce       # hex~%# Order signature~%uint8[] signature   # hex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'demand))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deal>))
  "Converts a ROS message object to a list"
  (cl:list 'Deal
    (cl:cons ':demand (demand msg))
    (cl:cons ':offer (offer msg))
))
