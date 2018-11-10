;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::TransferEvent)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'TransferEvent (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::TRANSFEREVENT")
  (make-package "ETHEREUM_COMMON::TRANSFEREVENT"))

(in-package "ROS")
;;//! \htmlinclude TransferEvent.msg.html


(defclass ethereum_common::TransferEvent
  :super ros::object
  :slots (_args_from _args_to _args_value ))

(defmethod ethereum_common::TransferEvent
  (:init
   (&key
    ((:args_from __args_from) (instance ethereum_common::Address :init))
    ((:args_to __args_to) (instance ethereum_common::Address :init))
    ((:args_value __args_value) (instance ethereum_common::UInt256 :init))
    )
   (send-super :init)
   (setq _args_from __args_from)
   (setq _args_to __args_to)
   (setq _args_value __args_value)
   self)
  (:args_from
   (&rest __args_from)
   (if (keywordp (car __args_from))
       (send* _args_from __args_from)
     (progn
       (if __args_from (setq _args_from (car __args_from)))
       _args_from)))
  (:args_to
   (&rest __args_to)
   (if (keywordp (car __args_to))
       (send* _args_to __args_to)
     (progn
       (if __args_to (setq _args_to (car __args_to)))
       _args_to)))
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
    ;; ethereum_common/Address _args_from
    (send _args_from :serialization-length)
    ;; ethereum_common/Address _args_to
    (send _args_to :serialization-length)
    ;; ethereum_common/UInt256 _args_value
    (send _args_value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/Address _args_from
       (send _args_from :serialize s)
     ;; ethereum_common/Address _args_to
       (send _args_to :serialize s)
     ;; ethereum_common/UInt256 _args_value
       (send _args_value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/Address _args_from
     (send _args_from :deserialize buf ptr-) (incf ptr- (send _args_from :serialization-length))
   ;; ethereum_common/Address _args_to
     (send _args_to :deserialize buf ptr-) (incf ptr- (send _args_to :serialization-length))
   ;; ethereum_common/UInt256 _args_value
     (send _args_value :deserialize buf ptr-) (incf ptr- (send _args_value :serialization-length))
   ;;
   self)
  )

(setf (get ethereum_common::TransferEvent :md5sum-) "35f272b72902fee74cbfac3183ab4ae1")
(setf (get ethereum_common::TransferEvent :datatype-) "ethereum_common/TransferEvent")
(setf (get ethereum_common::TransferEvent :definition-)
      "Address args_from 
Address args_to
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



(provide :ethereum_common/TransferEvent "35f272b72902fee74cbfac3183ab4ae1")


