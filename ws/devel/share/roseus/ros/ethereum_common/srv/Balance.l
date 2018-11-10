;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::Balance)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'Balance (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::BALANCE")
  (make-package "ETHEREUM_COMMON::BALANCE"))
(unless (find-package "ETHEREUM_COMMON::BALANCEREQUEST")
  (make-package "ETHEREUM_COMMON::BALANCEREQUEST"))
(unless (find-package "ETHEREUM_COMMON::BALANCERESPONSE")
  (make-package "ETHEREUM_COMMON::BALANCERESPONSE"))

(in-package "ROS")





(defclass ethereum_common::BalanceRequest
  :super ros::object
  :slots ())

(defmethod ethereum_common::BalanceRequest
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

(defclass ethereum_common::BalanceResponse
  :super ros::object
  :slots (_balance ))

(defmethod ethereum_common::BalanceResponse
  (:init
   (&key
    ((:balance __balance) (instance ethereum_common::UInt256 :init))
    )
   (send-super :init)
   (setq _balance __balance)
   self)
  (:balance
   (&rest __balance)
   (if (keywordp (car __balance))
       (send* _balance __balance)
     (progn
       (if __balance (setq _balance (car __balance)))
       _balance)))
  (:serialization-length
   ()
   (+
    ;; ethereum_common/UInt256 _balance
    (send _balance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/UInt256 _balance
       (send _balance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/UInt256 _balance
     (send _balance :deserialize buf ptr-) (incf ptr- (send _balance :serialization-length))
   ;;
   self)
  )

(defclass ethereum_common::Balance
  :super ros::object
  :slots ())

(setf (get ethereum_common::Balance :md5sum-) "91627563a1e35c16c10754661905461e")
(setf (get ethereum_common::Balance :datatype-) "ethereum_common/Balance")
(setf (get ethereum_common::Balance :request) ethereum_common::BalanceRequest)
(setf (get ethereum_common::Balance :response) ethereum_common::BalanceResponse)

(defmethod ethereum_common::BalanceRequest
  (:response () (instance ethereum_common::BalanceResponse :init)))

(setf (get ethereum_common::BalanceRequest :md5sum-) "91627563a1e35c16c10754661905461e")
(setf (get ethereum_common::BalanceRequest :datatype-) "ethereum_common/BalanceRequest")
(setf (get ethereum_common::BalanceRequest :definition-)
      "---
UInt256 balance

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")

(setf (get ethereum_common::BalanceResponse :md5sum-) "91627563a1e35c16c10754661905461e")
(setf (get ethereum_common::BalanceResponse :datatype-) "ethereum_common/BalanceResponse")
(setf (get ethereum_common::BalanceResponse :definition-)
      "---
UInt256 balance

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")



(provide :ethereum_common/Balance "91627563a1e35c16c10754661905461e")


