;; Auto-generated. Do not edit!


(when (boundp 'robonomics_liability::StartLiability)
  (if (not (find-package "ROBONOMICS_LIABILITY"))
    (make-package "ROBONOMICS_LIABILITY"))
  (shadow 'StartLiability (find-package "ROBONOMICS_LIABILITY")))
(unless (find-package "ROBONOMICS_LIABILITY::STARTLIABILITY")
  (make-package "ROBONOMICS_LIABILITY::STARTLIABILITY"))
(unless (find-package "ROBONOMICS_LIABILITY::STARTLIABILITYREQUEST")
  (make-package "ROBONOMICS_LIABILITY::STARTLIABILITYREQUEST"))
(unless (find-package "ROBONOMICS_LIABILITY::STARTLIABILITYRESPONSE")
  (make-package "ROBONOMICS_LIABILITY::STARTLIABILITYRESPONSE"))

(in-package "ROS")





(defclass robonomics_liability::StartLiabilityRequest
  :super ros::object
  :slots (_address ))

(defmethod robonomics_liability::StartLiabilityRequest
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

(defclass robonomics_liability::StartLiabilityResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod robonomics_liability::StartLiabilityResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robonomics_liability::StartLiability
  :super ros::object
  :slots ())

(setf (get robonomics_liability::StartLiability :md5sum-) "ebc07382abd5516bf503d6260b124af7")
(setf (get robonomics_liability::StartLiability :datatype-) "robonomics_liability/StartLiability")
(setf (get robonomics_liability::StartLiability :request) robonomics_liability::StartLiabilityRequest)
(setf (get robonomics_liability::StartLiability :response) robonomics_liability::StartLiabilityResponse)

(defmethod robonomics_liability::StartLiabilityRequest
  (:response () (instance robonomics_liability::StartLiabilityResponse :init)))

(setf (get robonomics_liability::StartLiabilityRequest :md5sum-) "ebc07382abd5516bf503d6260b124af7")
(setf (get robonomics_liability::StartLiabilityRequest :datatype-) "robonomics_liability/StartLiabilityRequest")
(setf (get robonomics_liability::StartLiabilityRequest :definition-)
      "string address
---
bool success
string msg

")

(setf (get robonomics_liability::StartLiabilityResponse :md5sum-) "ebc07382abd5516bf503d6260b124af7")
(setf (get robonomics_liability::StartLiabilityResponse :datatype-) "robonomics_liability/StartLiabilityResponse")
(setf (get robonomics_liability::StartLiabilityResponse :definition-)
      "string address
---
bool success
string msg

")



(provide :robonomics_liability/StartLiability "ebc07382abd5516bf503d6260b124af7")


