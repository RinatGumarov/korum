;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::Approve)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'Approve (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::APPROVE")
  (make-package "ETHEREUM_COMMON::APPROVE"))
(unless (find-package "ETHEREUM_COMMON::APPROVEREQUEST")
  (make-package "ETHEREUM_COMMON::APPROVEREQUEST"))
(unless (find-package "ETHEREUM_COMMON::APPROVERESPONSE")
  (make-package "ETHEREUM_COMMON::APPROVERESPONSE"))

(in-package "ROS")





(defclass ethereum_common::ApproveRequest
  :super ros::object
  :slots (_spender _value ))

(defmethod ethereum_common::ApproveRequest
  (:init
   (&key
    ((:spender __spender) (instance ethereum_common::Address :init))
    ((:value __value) (instance ethereum_common::UInt256 :init))
    )
   (send-super :init)
   (setq _spender __spender)
   (setq _value __value)
   self)
  (:spender
   (&rest __spender)
   (if (keywordp (car __spender))
       (send* _spender __spender)
     (progn
       (if __spender (setq _spender (car __spender)))
       _spender)))
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
    ;; ethereum_common/Address _spender
    (send _spender :serialization-length)
    ;; ethereum_common/UInt256 _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/Address _spender
       (send _spender :serialize s)
     ;; ethereum_common/UInt256 _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/Address _spender
     (send _spender :deserialize buf ptr-) (incf ptr- (send _spender :serialization-length))
   ;; ethereum_common/UInt256 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(defclass ethereum_common::ApproveResponse
  :super ros::object
  :slots (_txhash ))

(defmethod ethereum_common::ApproveResponse
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

(defclass ethereum_common::Approve
  :super ros::object
  :slots ())

(setf (get ethereum_common::Approve :md5sum-) "cf2aa6f2895c288e13b4e136d4e4a5fd")
(setf (get ethereum_common::Approve :datatype-) "ethereum_common/Approve")
(setf (get ethereum_common::Approve :request) ethereum_common::ApproveRequest)
(setf (get ethereum_common::Approve :response) ethereum_common::ApproveResponse)

(defmethod ethereum_common::ApproveRequest
  (:response () (instance ethereum_common::ApproveResponse :init)))

(setf (get ethereum_common::ApproveRequest :md5sum-) "cf2aa6f2895c288e13b4e136d4e4a5fd")
(setf (get ethereum_common::ApproveRequest :datatype-) "ethereum_common/ApproveRequest")
(setf (get ethereum_common::ApproveRequest :definition-)
      "Address spender
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

(setf (get ethereum_common::ApproveResponse :md5sum-) "cf2aa6f2895c288e13b4e136d4e4a5fd")
(setf (get ethereum_common::ApproveResponse :datatype-) "ethereum_common/ApproveResponse")
(setf (get ethereum_common::ApproveResponse :definition-)
      "Address spender
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



(provide :ethereum_common/Approve "cf2aa6f2895c288e13b4e136d4e4a5fd")


