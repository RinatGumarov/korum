;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::Allowance)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'Allowance (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::ALLOWANCE")
  (make-package "ETHEREUM_COMMON::ALLOWANCE"))
(unless (find-package "ETHEREUM_COMMON::ALLOWANCEREQUEST")
  (make-package "ETHEREUM_COMMON::ALLOWANCEREQUEST"))
(unless (find-package "ETHEREUM_COMMON::ALLOWANCERESPONSE")
  (make-package "ETHEREUM_COMMON::ALLOWANCERESPONSE"))

(in-package "ROS")





(defclass ethereum_common::AllowanceRequest
  :super ros::object
  :slots ())

(defmethod ethereum_common::AllowanceRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ethereum_common::AllowanceResponse
  :super ros::object
  :slots (_amount ))

(defmethod ethereum_common::AllowanceResponse
  (:init
   (&key
    ((:amount __amount) (instance ethereum_common::UInt256 :init))
    )
   (send-super :init)
   (setq _amount __amount)
   self)
  (:amount
   (&rest __amount)
   (if (keywordp (car __amount))
       (send* _amount __amount)
     (progn
       (if __amount (setq _amount (car __amount)))
       _amount)))
  (:serialization-length
   ()
   (+
    ;; ethereum_common/UInt256 _amount
    (send _amount :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/UInt256 _amount
       (send _amount :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/UInt256 _amount
     (send _amount :deserialize buf ptr-) (incf ptr- (send _amount :serialization-length))
   ;;
   self)
  )

(defclass ethereum_common::Allowance
  :super ros::object
  :slots ())

(setf (get ethereum_common::Allowance :md5sum-) "e2d262a3aeb417f4eb11856b3be5f1c2")
(setf (get ethereum_common::Allowance :datatype-) "ethereum_common/Allowance")
(setf (get ethereum_common::Allowance :request) ethereum_common::AllowanceRequest)
(setf (get ethereum_common::Allowance :response) ethereum_common::AllowanceResponse)

(defmethod ethereum_common::AllowanceRequest
  (:response () (instance ethereum_common::AllowanceResponse :init)))

(setf (get ethereum_common::AllowanceRequest :md5sum-) "e2d262a3aeb417f4eb11856b3be5f1c2")
(setf (get ethereum_common::AllowanceRequest :datatype-) "ethereum_common/AllowanceRequest")
(setf (get ethereum_common::AllowanceRequest :definition-)
      "---
UInt256 amount

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")

(setf (get ethereum_common::AllowanceResponse :md5sum-) "e2d262a3aeb417f4eb11856b3be5f1c2")
(setf (get ethereum_common::AllowanceResponse :datatype-) "ethereum_common/AllowanceResponse")
(setf (get ethereum_common::AllowanceResponse :definition-)
      "---
UInt256 amount

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")



(provide :ethereum_common/Allowance "e2d262a3aeb417f4eb11856b3be5f1c2")


