;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::Address)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'Address (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::ADDRESS")
  (make-package "ETHEREUM_COMMON::ADDRESS"))

(in-package "ROS")
;;//! \htmlinclude Address.msg.html


(defclass ethereum_common::Address
  :super ros::object
  :slots (_address ))

(defmethod ethereum_common::Address
  (:init
   (&key
    ((:address __address) "")
    )
   (send-super :init)
   (setq _address (string __address))
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:serialization-length
   ()
   (+
    ;; string _address
    4 (length _address)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ethereum_common::Address :md5sum-) "5bc6398c2d30daa431354525a4683624")
(setf (get ethereum_common::Address :datatype-) "ethereum_common/Address")
(setf (get ethereum_common::Address :definition-)
      "# Ethereum address message
string address

")



(provide :ethereum_common/Address "5bc6398c2d30daa431354525a4683624")


