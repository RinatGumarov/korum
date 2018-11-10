;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::AccountBalance)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'AccountBalance (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTBALANCE")
  (make-package "ETHEREUM_COMMON::ACCOUNTBALANCE"))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTBALANCEREQUEST")
  (make-package "ETHEREUM_COMMON::ACCOUNTBALANCEREQUEST"))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTBALANCERESPONSE")
  (make-package "ETHEREUM_COMMON::ACCOUNTBALANCERESPONSE"))

(in-package "ROS")





(defclass ethereum_common::AccountBalanceRequest
  :super ros::object
  :slots (_account ))

(defmethod ethereum_common::AccountBalanceRequest
  (:init
   (&key
    ((:account __account) (instance ethereum_common::Address :init))
    )
   (send-super :init)
   (setq _account __account)
   self)
  (:account
   (&rest __account)
   (if (keywordp (car __account))
       (send* _account __account)
     (progn
       (if __account (setq _account (car __account)))
       _account)))
  (:serialization-length
   ()
   (+
    ;; ethereum_common/Address _account
    (send _account :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/Address _account
       (send _account :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/Address _account
     (send _account :deserialize buf ptr-) (incf ptr- (send _account :serialization-length))
   ;;
   self)
  )

(defclass ethereum_common::AccountBalanceResponse
  :super ros::object
  :slots (_balance ))

(defmethod ethereum_common::AccountBalanceResponse
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

(defclass ethereum_common::AccountBalance
  :super ros::object
  :slots ())

(setf (get ethereum_common::AccountBalance :md5sum-) "0f8190e3a314b4f0b718e5fba37da225")
(setf (get ethereum_common::AccountBalance :datatype-) "ethereum_common/AccountBalance")
(setf (get ethereum_common::AccountBalance :request) ethereum_common::AccountBalanceRequest)
(setf (get ethereum_common::AccountBalance :response) ethereum_common::AccountBalanceResponse)

(defmethod ethereum_common::AccountBalanceRequest
  (:response () (instance ethereum_common::AccountBalanceResponse :init)))

(setf (get ethereum_common::AccountBalanceRequest :md5sum-) "0f8190e3a314b4f0b718e5fba37da225")
(setf (get ethereum_common::AccountBalanceRequest :datatype-) "ethereum_common/AccountBalanceRequest")
(setf (get ethereum_common::AccountBalanceRequest :definition-)
      "Address account

================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address
---
UInt256 balance

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")

(setf (get ethereum_common::AccountBalanceResponse :md5sum-) "0f8190e3a314b4f0b718e5fba37da225")
(setf (get ethereum_common::AccountBalanceResponse :datatype-) "ethereum_common/AccountBalanceResponse")
(setf (get ethereum_common::AccountBalanceResponse :definition-)
      "Address account

================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address
---
UInt256 balance

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")



(provide :ethereum_common/AccountBalance "0f8190e3a314b4f0b718e5fba37da225")


