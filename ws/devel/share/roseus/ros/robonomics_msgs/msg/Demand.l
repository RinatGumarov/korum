;; Auto-generated. Do not edit!


(when (boundp 'robonomics_msgs::Demand)
  (if (not (find-package "ROBONOMICS_MSGS"))
    (make-package "ROBONOMICS_MSGS"))
  (shadow 'Demand (find-package "ROBONOMICS_MSGS")))
(unless (find-package "ROBONOMICS_MSGS::DEMAND")
  (make-package "ROBONOMICS_MSGS::DEMAND"))

(in-package "ROS")
;;//! \htmlinclude Demand.msg.html


(defclass robonomics_msgs::Demand
  :super ros::object
  :slots (_model _objective _token _cost _lighthouse _validator _validatorFee _deadline _nonce _signature ))

(defmethod robonomics_msgs::Demand
  (:init
   (&key
    ((:model __model) "")
    ((:objective __objective) "")
    ((:token __token) "")
    ((:cost __cost) 0)
    ((:lighthouse __lighthouse) "")
    ((:validator __validator) "")
    ((:validatorFee __validatorFee) 0)
    ((:deadline __deadline) 0)
    ((:nonce __nonce) (make-array 0 :initial-element 0 :element-type :char))
    ((:signature __signature) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _model (string __model))
   (setq _objective (string __objective))
   (setq _token (string __token))
   (setq _cost (round __cost))
   (setq _lighthouse (string __lighthouse))
   (setq _validator (string __validator))
   (setq _validatorFee (round __validatorFee))
   (setq _deadline (round __deadline))
   (setq _nonce __nonce)
   (setq _signature __signature)
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:objective
   (&optional __objective)
   (if __objective (setq _objective __objective)) _objective)
  (:token
   (&optional __token)
   (if __token (setq _token __token)) _token)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:lighthouse
   (&optional __lighthouse)
   (if __lighthouse (setq _lighthouse __lighthouse)) _lighthouse)
  (:validator
   (&optional __validator)
   (if __validator (setq _validator __validator)) _validator)
  (:validatorFee
   (&optional __validatorFee)
   (if __validatorFee (setq _validatorFee __validatorFee)) _validatorFee)
  (:deadline
   (&optional __deadline)
   (if __deadline (setq _deadline __deadline)) _deadline)
  (:nonce
   (&optional __nonce)
   (if __nonce (setq _nonce __nonce)) _nonce)
  (:signature
   (&optional __signature)
   (if __signature (setq _signature __signature)) _signature)
  (:serialization-length
   ()
   (+
    ;; string _model
    4 (length _model)
    ;; string _objective
    4 (length _objective)
    ;; string _token
    4 (length _token)
    ;; uint32 _cost
    4
    ;; string _lighthouse
    4 (length _lighthouse)
    ;; string _validator
    4 (length _validator)
    ;; uint32 _validatorFee
    4
    ;; uint32 _deadline
    4
    ;; uint8[] _nonce
    (* 1    (length _nonce)) 4
    ;; uint8[] _signature
    (* 1    (length _signature)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; string _objective
       (write-long (length _objective) s) (princ _objective s)
     ;; string _token
       (write-long (length _token) s) (princ _token s)
     ;; uint32 _cost
       (write-long _cost s)
     ;; string _lighthouse
       (write-long (length _lighthouse) s) (princ _lighthouse s)
     ;; string _validator
       (write-long (length _validator) s) (princ _validator s)
     ;; uint32 _validatorFee
       (write-long _validatorFee s)
     ;; uint32 _deadline
       (write-long _deadline s)
     ;; uint8[] _nonce
     (write-long (length _nonce) s)
     (princ _nonce s)
     ;; uint8[] _signature
     (write-long (length _signature) s)
     (princ _signature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _objective
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _objective (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _cost
     (setq _cost (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _lighthouse
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lighthouse (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _validator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _validator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _validatorFee
     (setq _validatorFee (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _deadline
     (setq _deadline (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _nonce
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _nonce (make-array n :element-type :char))
     (replace _nonce buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _signature
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _signature (make-array n :element-type :char))
     (replace _signature buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get robonomics_msgs::Demand :md5sum-) "ec1f8d196072d4b64ef2c348c1904806")
(setf (get robonomics_msgs::Demand :datatype-) "robonomics_msgs/Demand")
(setf (get robonomics_msgs::Demand :definition-)
      "# Behaviour model
string model         # Base58 
# Task
string objective     # Base58
# Operational token
string token         # address
# Execution cost
uint32 cost          # int
# lighthouse network address
string lighthouse    #address
# Validator network address
string validator     # address
# Validator network fee
uint32 validatorFee  # int 
# Deadline block number
uint32 deadline      # int
# Order nonce value
uint8[] nonce        # hex 
# Order signature
uint8[] signature    # hex

")



(provide :robonomics_msgs/Demand "ec1f8d196072d4b64ef2c348c1904806")


