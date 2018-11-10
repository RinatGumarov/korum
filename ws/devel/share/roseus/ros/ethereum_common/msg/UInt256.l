;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::UInt256)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'UInt256 (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::UINT256")
  (make-package "ETHEREUM_COMMON::UINT256"))

(in-package "ROS")
;;//! \htmlinclude UInt256.msg.html


(defclass ethereum_common::UInt256
  :super ros::object
  :slots (_uint256 ))

(defmethod ethereum_common::UInt256
  (:init
   (&key
    ((:uint256 __uint256) "")
    )
   (send-super :init)
   (setq _uint256 (string __uint256))
   self)
  (:uint256
   (&optional __uint256)
   (if __uint256 (setq _uint256 __uint256)) _uint256)
  (:serialization-length
   ()
   (+
    ;; string _uint256
    4 (length _uint256)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uint256
       (write-long (length _uint256) s) (princ _uint256 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uint256
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uint256 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ethereum_common::UInt256 :md5sum-) "d3e47bf4311da2c63d362b5eea4c389b")
(setf (get ethereum_common::UInt256 :datatype-) "ethereum_common/UInt256")
(setf (get ethereum_common::UInt256 :definition-)
      "# 256bit unisgned integer
string uint256

")



(provide :ethereum_common/UInt256 "d3e47bf4311da2c63d362b5eea4c389b")


