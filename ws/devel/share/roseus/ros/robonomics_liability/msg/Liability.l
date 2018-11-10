;; Auto-generated. Do not edit!


(when (boundp 'robonomics_liability::Liability)
  (if (not (find-package "ROBONOMICS_LIABILITY"))
    (make-package "ROBONOMICS_LIABILITY"))
  (shadow 'Liability (find-package "ROBONOMICS_LIABILITY")))
(unless (find-package "ROBONOMICS_LIABILITY::LIABILITY")
  (make-package "ROBONOMICS_LIABILITY::LIABILITY"))

(in-package "ROS")
;;//! \htmlinclude Liability.msg.html


(defclass robonomics_liability::Liability
  :super ros::object
  :slots (_address _model _objective _result _promisee _promisor _token _cost _validator _validatorFee ))

(defmethod robonomics_liability::Liability
  (:init
   (&key
    ((:address __address) "")
    ((:model __model) "")
    ((:objective __objective) "")
    ((:result __result) "")
    ((:promisee __promisee) "")
    ((:promisor __promisor) "")
    ((:token __token) "")
    ((:cost __cost) 0)
    ((:validator __validator) "")
    ((:validatorFee __validatorFee) 0)
    )
   (send-super :init)
   (setq _address (string __address))
   (setq _model (string __model))
   (setq _objective (string __objective))
   (setq _result (string __result))
   (setq _promisee (string __promisee))
   (setq _promisor (string __promisor))
   (setq _token (string __token))
   (setq _cost (round __cost))
   (setq _validator (string __validator))
   (setq _validatorFee (round __validatorFee))
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:objective
   (&optional __objective)
   (if __objective (setq _objective __objective)) _objective)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:promisee
   (&optional __promisee)
   (if __promisee (setq _promisee __promisee)) _promisee)
  (:promisor
   (&optional __promisor)
   (if __promisor (setq _promisor __promisor)) _promisor)
  (:token
   (&optional __token)
   (if __token (setq _token __token)) _token)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:validator
   (&optional __validator)
   (if __validator (setq _validator __validator)) _validator)
  (:validatorFee
   (&optional __validatorFee)
   (if __validatorFee (setq _validatorFee __validatorFee)) _validatorFee)
  (:serialization-length
   ()
   (+
    ;; string _address
    4 (length _address)
    ;; string _model
    4 (length _model)
    ;; string _objective
    4 (length _objective)
    ;; string _result
    4 (length _result)
    ;; string _promisee
    4 (length _promisee)
    ;; string _promisor
    4 (length _promisor)
    ;; string _token
    4 (length _token)
    ;; uint64 _cost
    8
    ;; string _validator
    4 (length _validator)
    ;; uint64 _validatorFee
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; string _objective
       (write-long (length _objective) s) (princ _objective s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; string _promisee
       (write-long (length _promisee) s) (princ _promisee s)
     ;; string _promisor
       (write-long (length _promisor) s) (princ _promisor s)
     ;; string _token
       (write-long (length _token) s) (princ _token s)
     ;; uint64 _cost
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cost (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cost) (= (length (_cost . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cost . bv) 0) 0) s)
              (write-long (ash (elt (_cost . bv) 1) -1) s))
             ((and (class _cost) (= (length (_cost . bv)) 1)) ;; big1
              (write-long (elt (_cost . bv) 0) s)
              (write-long (if (>= _cost 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cost s)(write-long (if (>= _cost 0) 0 #xffffffff) s)))
     ;; string _validator
       (write-long (length _validator) s) (princ _validator s)
     ;; uint64 _validatorFee
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _validatorFee (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _validatorFee) (= (length (_validatorFee . bv)) 2)) ;; bignum
              (write-long (ash (elt (_validatorFee . bv) 0) 0) s)
              (write-long (ash (elt (_validatorFee . bv) 1) -1) s))
             ((and (class _validatorFee) (= (length (_validatorFee . bv)) 1)) ;; big1
              (write-long (elt (_validatorFee . bv) 0) s)
              (write-long (if (>= _validatorFee 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _validatorFee s)(write-long (if (>= _validatorFee 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _objective
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _objective (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _promisee
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _promisee (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _promisor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _promisor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _cost
     
#+(or :alpha :irix6 :x86_64)
      (setf _cost (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cost (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _validator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _validator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _validatorFee
     
#+(or :alpha :irix6 :x86_64)
      (setf _validatorFee (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _validatorFee (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get robonomics_liability::Liability :md5sum-) "bfbed1b3b614dbb05af016d2c1c4cde6")
(setf (get robonomics_liability::Liability :datatype-) "robonomics_liability/Liability")
(setf (get robonomics_liability::Liability :definition-)
      "string address
string model
string objective
string result
string promisee
string promisor
string token
uint64 cost
string validator
uint64 validatorFee

")



(provide :robonomics_liability/Liability "bfbed1b3b614dbb05af016d2c1c4cde6")


