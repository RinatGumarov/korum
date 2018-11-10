;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::BlockNumber)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'BlockNumber (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::BLOCKNUMBER")
  (make-package "ETHEREUM_COMMON::BLOCKNUMBER"))
(unless (find-package "ETHEREUM_COMMON::BLOCKNUMBERREQUEST")
  (make-package "ETHEREUM_COMMON::BLOCKNUMBERREQUEST"))
(unless (find-package "ETHEREUM_COMMON::BLOCKNUMBERRESPONSE")
  (make-package "ETHEREUM_COMMON::BLOCKNUMBERRESPONSE"))

(in-package "ROS")





(defclass ethereum_common::BlockNumberRequest
  :super ros::object
  :slots ())

(defmethod ethereum_common::BlockNumberRequest
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

(defclass ethereum_common::BlockNumberResponse
  :super ros::object
  :slots (_number ))

(defmethod ethereum_common::BlockNumberResponse
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; uint64 _number
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _number) (= (length (_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_number . bv) 0) 0) s)
              (write-long (ash (elt (_number . bv) 1) -1) s))
             ((and (class _number) (= (length (_number . bv)) 1)) ;; big1
              (write-long (elt (_number . bv) 0) s)
              (write-long (if (>= _number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _number s)(write-long (if (>= _number 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _number
     
#+(or :alpha :irix6 :x86_64)
      (setf _number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass ethereum_common::BlockNumber
  :super ros::object
  :slots ())

(setf (get ethereum_common::BlockNumber :md5sum-) "9ea9c5dc974a67358629419455d31fec")
(setf (get ethereum_common::BlockNumber :datatype-) "ethereum_common/BlockNumber")
(setf (get ethereum_common::BlockNumber :request) ethereum_common::BlockNumberRequest)
(setf (get ethereum_common::BlockNumber :response) ethereum_common::BlockNumberResponse)

(defmethod ethereum_common::BlockNumberRequest
  (:response () (instance ethereum_common::BlockNumberResponse :init)))

(setf (get ethereum_common::BlockNumberRequest :md5sum-) "9ea9c5dc974a67358629419455d31fec")
(setf (get ethereum_common::BlockNumberRequest :datatype-) "ethereum_common/BlockNumberRequest")
(setf (get ethereum_common::BlockNumberRequest :definition-)
      "---
uint64 number
")

(setf (get ethereum_common::BlockNumberResponse :md5sum-) "9ea9c5dc974a67358629419455d31fec")
(setf (get ethereum_common::BlockNumberResponse :datatype-) "ethereum_common/BlockNumberResponse")
(setf (get ethereum_common::BlockNumberResponse :definition-)
      "---
uint64 number
")



(provide :ethereum_common/BlockNumber "9ea9c5dc974a67358629419455d31fec")


