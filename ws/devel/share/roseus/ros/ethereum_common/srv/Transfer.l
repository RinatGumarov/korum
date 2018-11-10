;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::Transfer)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'Transfer (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::TRANSFER")
  (make-package "ETHEREUM_COMMON::TRANSFER"))
(unless (find-package "ETHEREUM_COMMON::TRANSFERREQUEST")
  (make-package "ETHEREUM_COMMON::TRANSFERREQUEST"))
(unless (find-package "ETHEREUM_COMMON::TRANSFERRESPONSE")
  (make-package "ETHEREUM_COMMON::TRANSFERRESPONSE"))

(in-package "ROS")





(defclass ethereum_common::TransferRequest
  :super ros::object
  :slots (_to _value ))

(defmethod ethereum_common::TransferRequest
  (:init
   (&key
    ((:to __to) (instance ethereum_common::Address :init))
    ((:value __value) (instance ethereum_common::UInt256 :init))
    )
   (send-super :init)
   (setq _to __to)
   (setq _value __value)
   self)
  (:to
   (&rest __to)
   (if (keywordp (car __to))
       (send* _to __to)
     (progn
       (if __to (setq _to (car __to)))
       _to)))
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:serialization-length
   ()
   (+
    ;; ethereum_common/Address _to
    (send _to :serialization-length)
    ;; ethereum_common/UInt256 _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/Address _to
       (send _to :serialize s)
     ;; ethereum_common/UInt256 _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/Address _to
     (send _to :deserialize buf ptr-) (incf ptr- (send _to :serialization-length))
   ;; ethereum_common/UInt256 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(defclass ethereum_common::TransferResponse
  :super ros::object
  :slots (_txhash ))

(defmethod ethereum_common::TransferResponse
  (:init
   (&key
    ((:txhash __txhash) (make-array 32 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _txhash __txhash)
   self)
  (:txhash
   (&optional __txhash)
   (if __txhash (setq _txhash __txhash)) _txhash)
  (:serialization-length
   ()
   (+
    ;; uint8[32] _txhash
    (* 1    32)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[32] _txhash
     (princ _txhash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[32] _txhash
   (setq _txhash (make-array 32 :element-type :char))
   (replace _txhash buf :start2 ptr-) (incf ptr- 32)
   ;;
   self)
  )

(defclass ethereum_common::Transfer
  :super ros::object
  :slots ())

(setf (get ethereum_common::Transfer :md5sum-) "3174e907a7a184dbf8e5563f18f0c467")
(setf (get ethereum_common::Transfer :datatype-) "ethereum_common/Transfer")
(setf (get ethereum_common::Transfer :request) ethereum_common::TransferRequest)
(setf (get ethereum_common::Transfer :response) ethereum_common::TransferResponse)

(defmethod ethereum_common::TransferRequest
  (:response () (instance ethereum_common::TransferResponse :init)))

(setf (get ethereum_common::TransferRequest :md5sum-) "3174e907a7a184dbf8e5563f18f0c467")
(setf (get ethereum_common::TransferRequest :datatype-) "ethereum_common/TransferRequest")
(setf (get ethereum_common::TransferRequest :definition-)
      "Address to
UInt256 value

================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
---
uint8[32] txhash

")

(setf (get ethereum_common::TransferResponse :md5sum-) "3174e907a7a184dbf8e5563f18f0c467")
(setf (get ethereum_common::TransferResponse :datatype-) "ethereum_common/TransferResponse")
(setf (get ethereum_common::TransferResponse :definition-)
      "Address to
UInt256 value

================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address

================================================================================
MSG: ethereum_common/UInt256
# 256bit unisgned integer
string uint256
---
uint8[32] txhash

")



(provide :ethereum_common/Transfer "3174e907a7a184dbf8e5563f18f0c467")


