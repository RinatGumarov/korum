;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::ApprovalEvent)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'ApprovalEvent (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::APPROVALEVENT")
  (make-package "ETHEREUM_COMMON::APPROVALEVENT"))

(in-package "ROS")
;;//! \htmlinclude ApprovalEvent.msg.html


(defclass ethereum_common::ApprovalEvent
  :super ros::object
  :slots (_args_owner _args_spender _args_value ))

(defmethod ethereum_common::ApprovalEvent
  (:init
   (&key
    ((:args_owner __args_owner) (instance ethereum_common::Address :init))
    ((:args_spender __args_spender) (instance ethereum_common::Address :init))
    ((:args_value __args_value) (instance ethereum_common::UInt256 :init))
    )
   (send-super :init)
   (setq _args_owner __args_owner)
   (setq _args_spender __args_spender)
   (setq _args_value __args_value)
   self)
  (:args_owner
   (&rest __args_owner)
   (if (keywordp (car __args_owner))
       (send* _args_owner __args_owner)
     (progn
       (if __args_owner (setq _args_owner (car __args_owner)))
       _args_owner)))
  (:args_spender
   (&rest __args_spender)
   (if (keywordp (car __args_spender))
       (send* _args_spender __args_spender)
     (progn
       (if __args_spender (setq _args_spender (car __args_spender)))
       _args_spender)))
  (:args_value
   (&rest __args_value)
   (if (keywordp (car __args_value))
       (send* _args_value __args_value)
     (progn
       (if __args_value (setq _args_value (car __args_value)))
       _args_value)))
  (:serialization-length
   ()
   (+
    ;; ethereum_common/Address _args_owner
    (send _args_owner :serialization-length)
    ;; ethereum_common/Address _args_spender
    (send _args_spender :serialization-length)
    ;; ethereum_common/UInt256 _args_value
    (send _args_value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/Address _args_owner
       (send _args_owner :serialize s)
     ;; ethereum_common/Address _args_spender
       (send _args_spender :serialize s)
     ;; ethereum_common/UInt256 _args_value
       (send _args_value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/Address _args_owner
     (send _args_owner :deserialize buf ptr-) (incf ptr- (send _args_owner :serialization-length))
   ;; ethereum_common/Address _args_spender
     (send _args_spender :deserialize buf ptr-) (incf ptr- (send _args_spender :serialization-length))
   ;; ethereum_common/UInt256 _args_value
     (send _args_value :deserialize buf ptr-) (incf ptr- (send _args_value :serialization-length))
   ;;
   self)
  )

(setf (get ethereum_common::ApprovalEvent :md5sum-) "f1aefc216de0e824eacf1263c8aeb4df")
(setf (get ethereum_common::ApprovalEvent :datatype-) "ethereum_common/ApprovalEvent")
(setf (get ethereum_common::ApprovalEvent :definition-)
      "Address args_owner 
Address args_spender
UInt256 args_value

================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256

")



(provide :ethereum_common/ApprovalEvent "f1aefc216de0e824eacf1263c8aeb4df")


