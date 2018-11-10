;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::AccountToAddressAllowance)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'AccountToAddressAllowance (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTTOADDRESSALLOWANCE")
  (make-package "ETHEREUM_COMMON::ACCOUNTTOADDRESSALLOWANCE"))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTTOADDRESSALLOWANCEREQUEST")
  (make-package "ETHEREUM_COMMON::ACCOUNTTOADDRESSALLOWANCEREQUEST"))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTTOADDRESSALLOWANCERESPONSE")
  (make-package "ETHEREUM_COMMON::ACCOUNTTOADDRESSALLOWANCERESPONSE"))

(in-package "ROS")





(defclass ethereum_common::AccountToAddressAllowanceRequest
  :super ros::object
  :slots (_account _to ))

(defmethod ethereum_common::AccountToAddressAllowanceRequest
  (:init
   (&key
    ((:account __account) (instance ethereum_common::Address :init))
    ((:to __to) (instance ethereum_common::Address :init))
    )
   (send-super :init)
   (setq _account __account)
   (setq _to __to)
   self)
  (:account
   (&rest __account)
   (if (keywordp (car __account))
       (send* _account __account)
     (progn
       (if __account (setq _account (car __account)))
       _account)))
  (:to
   (&rest __to)
   (if (keywordp (car __to))
       (send* _to __to)
     (progn
       (if __to (setq _to (car __to)))
       _to)))
  (:serialization-length
   ()
   (+
    ;; ethereum_common/Address _account
    (send _account :serialization-length)
    ;; ethereum_common/Address _to
    (send _to :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/Address _account
       (send _account :serialize s)
     ;; ethereum_common/Address _to
       (send _to :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/Address _account
     (send _account :deserialize buf ptr-) (incf ptr- (send _account :serialization-length))
   ;; ethereum_common/Address _to
     (send _to :deserialize buf ptr-) (incf ptr- (send _to :serialization-length))
   ;;
   self)
  )

(defclass ethereum_common::AccountToAddressAllowanceResponse
  :super ros::object
  :slots (_amount ))

(defmethod ethereum_common::AccountToAddressAllowanceResponse
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

(defclass ethereum_common::AccountToAddressAllowance
  :super ros::object
  :slots ())

(setf (get ethereum_common::AccountToAddressAllowance :md5sum-) "bb0229e808c1117ea0065740cd6cdb83")
(setf (get ethereum_common::AccountToAddressAllowance :datatype-) "ethereum_common/AccountToAddressAllowance")
(setf (get ethereum_common::AccountToAddressAllowance :request) ethereum_common::AccountToAddressAllowanceRequest)
(setf (get ethereum_common::AccountToAddressAllowance :response) ethereum_common::AccountToAddressAllowanceResponse)

(defmethod ethereum_common::AccountToAddressAllowanceRequest
  (:response () (instance ethereum_common::AccountToAddressAllowanceResponse :init)))

(setf (get ethereum_common::AccountToAddressAllowanceRequest :md5sum-) "bb0229e808c1117ea0065740cd6cdb83")
(setf (get ethereum_common::AccountToAddressAllowanceRequest :datatype-) "ethereum_common/AccountToAddressAllowanceRequest")
(setf (get ethereum_common::AccountToAddressAllowanceRequest :definition-)
      "Address account
Address to

================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address
---
UInt256 amount

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")

(setf (get ethereum_common::AccountToAddressAllowanceResponse :md5sum-) "bb0229e808c1117ea0065740cd6cdb83")
(setf (get ethereum_common::AccountToAddressAllowanceResponse :datatype-) "ethereum_common/AccountToAddressAllowanceResponse")
(setf (get ethereum_common::AccountToAddressAllowanceResponse :definition-)
      "Address account
Address to

================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address
---
UInt256 amount

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
")



(provide :ethereum_common/AccountToAddressAllowance "bb0229e808c1117ea0065740cd6cdb83")


