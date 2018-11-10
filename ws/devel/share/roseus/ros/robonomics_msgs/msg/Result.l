;; Auto-generated. Do not edit!


(when (boundp 'robonomics_msgs::Result)
  (if (not (find-package "ROBONOMICS_MSGS"))
    (make-package "ROBONOMICS_MSGS"))
  (shadow 'Result (find-package "ROBONOMICS_MSGS")))
(unless (find-package "ROBONOMICS_MSGS::RESULT")
  (make-package "ROBONOMICS_MSGS::RESULT"))

(in-package "ROS")
;;//! \htmlinclude Result.msg.html


(defclass robonomics_msgs::Result
  :super ros::object
  :slots (_liability _result _success _signature ))

(defmethod robonomics_msgs::Result
  (:init
   (&key
    ((:liability __liability) "")
    ((:result __result) "")
    ((:success __success) nil)
    ((:signature __signature) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _liability (string __liability))
   (setq _result (string __result))
   (setq _success __success)
   (setq _signature __signature)
   self)
  (:liability
   (&optional __liability)
   (if __liability (setq _liability __liability)) _liability)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:signature
   (&optional __signature)
   (if __signature (setq _signature __signature)) _signature)
  (:serialization-length
   ()
   (+
    ;; string _liability
    4 (length _liability)
    ;; string _result
    4 (length _result)
    ;; bool _success
    1
    ;; uint8[] _signature
    (* 1    (length _signature)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _liability
       (write-long (length _liability) s) (princ _liability s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8[] _signature
     (write-long (length _signature) s)
     (princ _signature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _liability
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _liability (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8[] _signature
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _signature (make-array n :element-type :char))
     (replace _signature buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get robonomics_msgs::Result :md5sum-) "779c689203741480a2063956e588f667")
(setf (get robonomics_msgs::Result :datatype-) "robonomics_msgs/Result")
(setf (get robonomics_msgs::Result :definition-)
      "# Result liability
string liability     # address
# Result IPFS hash
string result       # base58
# Executed successfully flag
bool success
# Result signature
uint8[] signature    # hex

")



(provide :robonomics_msgs/Result "779c689203741480a2063956e588f667")


