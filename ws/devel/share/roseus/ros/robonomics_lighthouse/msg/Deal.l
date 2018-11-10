;; Auto-generated. Do not edit!


(when (boundp 'robonomics_lighthouse::Deal)
  (if (not (find-package "ROBONOMICS_LIGHTHOUSE"))
    (make-package "ROBONOMICS_LIGHTHOUSE"))
  (shadow 'Deal (find-package "ROBONOMICS_LIGHTHOUSE")))
(unless (find-package "ROBONOMICS_LIGHTHOUSE::DEAL")
  (make-package "ROBONOMICS_LIGHTHOUSE::DEAL"))

(in-package "ROS")
;;//! \htmlinclude Deal.msg.html
(if (not (find-package "ROBONOMICS_MSGS"))
  (ros::roseus-add-msgs "robonomics_msgs"))


(defclass robonomics_lighthouse::Deal
  :super ros::object
  :slots (_demand _offer ))

(defmethod robonomics_lighthouse::Deal
  (:init
   (&key
    ((:demand __demand) (instance robonomics_msgs::Demand :init))
    ((:offer __offer) (instance robonomics_msgs::Offer :init))
    )
   (send-super :init)
   (setq _demand __demand)
   (setq _offer __offer)
   self)
  (:demand
   (&rest __demand)
   (if (keywordp (car __demand))
       (send* _demand __demand)
     (progn
       (if __demand (setq _demand (car __demand)))
       _demand)))
  (:offer
   (&rest __offer)
   (if (keywordp (car __offer))
       (send* _offer __offer)
     (progn
       (if __offer (setq _offer (car __offer)))
       _offer)))
  (:serialization-length
   ()
   (+
    ;; robonomics_msgs/Demand _demand
    (send _demand :serialization-length)
    ;; robonomics_msgs/Offer _offer
    (send _offer :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robonomics_msgs/Demand _demand
       (send _demand :serialize s)
     ;; robonomics_msgs/Offer _offer
       (send _offer :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robonomics_msgs/Demand _demand
     (send _demand :deserialize buf ptr-) (incf ptr- (send _demand :serialization-length))
   ;; robonomics_msgs/Offer _offer
     (send _offer :deserialize buf ptr-) (incf ptr- (send _offer :serialization-length))
   ;;
   self)
  )

(setf (get robonomics_lighthouse::Deal :md5sum-) "4b47773dbfb8dcc972a397366b3f647c")
(setf (get robonomics_lighthouse::Deal :datatype-) "robonomics_lighthouse/Deal")
(setf (get robonomics_lighthouse::Deal :definition-)
      "robonomics_msgs/Demand demand 
robonomics_msgs/Offer  offer 

================================================================================
MSG: robonomics_msgs/Demand
# Behaviour model
string model         # Base58 
# Task
string objective     # Base58
# Operational token
string token         # address
# Execution cost
uint32 cost          # int
# lighthouse network address
string lighthouse    #address
# Validator network address
string validator     # address
# Validator network fee
uint32 validatorFee  # int 
# Deadline block number
uint32 deadline      # int
# Order nonce value
uint8[] nonce        # hex 
# Order signature
uint8[] signature    # hex

================================================================================
MSG: robonomics_msgs/Offer
# Behaviour model
string model        # Base58 
# Task
string objective     # Base58
# Operational token
string token        # address
# Execution cost
uint32 cost         # int
# Validator network address
string validator     # address
# lighthouse network address
string lighthouse    #address
# Settlement fee
uint32 lighthouseFee # int 
# Deadline block number
uint32 deadline
# Order nonce value 
uint8[] nonce       # hex
# Order signature
uint8[] signature   # hex

")



(provide :robonomics_lighthouse/Deal "4b47773dbfb8dcc972a397366b3f647c")


