;; Auto-generated. Do not edit!


(when (boundp 'robonomics_liability::FinishLiability)
  (if (not (find-package "ROBONOMICS_LIABILITY"))
    (make-package "ROBONOMICS_LIABILITY"))
  (shadow 'FinishLiability (find-package "ROBONOMICS_LIABILITY")))
(unless (find-package "ROBONOMICS_LIABILITY::FINISHLIABILITY")
  (make-package "ROBONOMICS_LIABILITY::FINISHLIABILITY"))
(unless (find-package "ROBONOMICS_LIABILITY::FINISHLIABILITYREQUEST")
  (make-package "ROBONOMICS_LIABILITY::FINISHLIABILITYREQUEST"))
(unless (find-package "ROBONOMICS_LIABILITY::FINISHLIABILITYRESPONSE")
  (make-package "ROBONOMICS_LIABILITY::FINISHLIABILITYRESPONSE"))

(in-package "ROS")





(defclass robonomics_liability::FinishLiabilityRequest
  :super ros::object
  :slots (_address _success ))

(defmethod robonomics_liability::FinishLiabilityRequest
  (:init
   (&key
    ((:address __address) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _address (string __address))
   (setq _success __success)
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _address
    4 (length _address)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robonomics_liability::FinishLiabilityResponse
  :super ros::object
  :slots ())

(defmethod robonomics_liability::FinishLiabilityResponse
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

(defclass robonomics_liability::FinishLiability
  :super ros::object
  :slots ())

(setf (get robonomics_liability::FinishLiability :md5sum-) "26b15e2de4e826d98955e2304f45fe00")
(setf (get robonomics_liability::FinishLiability :datatype-) "robonomics_liability/FinishLiability")
(setf (get robonomics_liability::FinishLiability :request) robonomics_liability::FinishLiabilityRequest)
(setf (get robonomics_liability::FinishLiability :response) robonomics_liability::FinishLiabilityResponse)

(defmethod robonomics_liability::FinishLiabilityRequest
  (:response () (instance robonomics_liability::FinishLiabilityResponse :init)))

(setf (get robonomics_liability::FinishLiabilityRequest :md5sum-) "26b15e2de4e826d98955e2304f45fe00")
(setf (get robonomics_liability::FinishLiabilityRequest :datatype-) "robonomics_liability/FinishLiabilityRequest")
(setf (get robonomics_liability::FinishLiabilityRequest :definition-)
      "string address
bool success
---

")

(setf (get robonomics_liability::FinishLiabilityResponse :md5sum-) "26b15e2de4e826d98955e2304f45fe00")
(setf (get robonomics_liability::FinishLiabilityResponse :datatype-) "robonomics_liability/FinishLiabilityResponse")
(setf (get robonomics_liability::FinishLiabilityResponse :definition-)
      "string address
bool success
---

")



(provide :robonomics_liability/FinishLiability "26b15e2de4e826d98955e2304f45fe00")


