;; Auto-generated. Do not edit!


(when (boundp 'ethereum_common::Accounts)
  (if (not (find-package "ETHEREUM_COMMON"))
    (make-package "ETHEREUM_COMMON"))
  (shadow 'Accounts (find-package "ETHEREUM_COMMON")))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTS")
  (make-package "ETHEREUM_COMMON::ACCOUNTS"))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTSREQUEST")
  (make-package "ETHEREUM_COMMON::ACCOUNTSREQUEST"))
(unless (find-package "ETHEREUM_COMMON::ACCOUNTSRESPONSE")
  (make-package "ETHEREUM_COMMON::ACCOUNTSRESPONSE"))

(in-package "ROS")





(defclass ethereum_common::AccountsRequest
  :super ros::object
  :slots ())

(defmethod ethereum_common::AccountsRequest
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

(defclass ethereum_common::AccountsResponse
  :super ros::object
  :slots (_accounts ))

(defmethod ethereum_common::AccountsResponse
  (:init
   (&key
    ((:accounts __accounts) (let (r) (dotimes (i 0) (push (instance ethereum_common::Address :init) r)) r))
    )
   (send-super :init)
   (setq _accounts __accounts)
   self)
  (:accounts
   (&rest __accounts)
   (if (keywordp (car __accounts))
       (send* _accounts __accounts)
     (progn
       (if __accounts (setq _accounts (car __accounts)))
       _accounts)))
  (:serialization-length
   ()
   (+
    ;; ethereum_common/Address[] _accounts
    (apply #'+ (send-all _accounts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethereum_common/Address[] _accounts
     (write-long (length _accounts) s)
     (dolist (elem _accounts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethereum_common/Address[] _accounts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accounts (let (r) (dotimes (i n) (push (instance ethereum_common::Address :init) r)) r))
     (dolist (elem- _accounts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ethereum_common::Accounts
  :super ros::object
  :slots ())

(setf (get ethereum_common::Accounts :md5sum-) "031c4bb89ac5ec75fbacab5f05cfa129")
(setf (get ethereum_common::Accounts :datatype-) "ethereum_common/Accounts")
(setf (get ethereum_common::Accounts :request) ethereum_common::AccountsRequest)
(setf (get ethereum_common::Accounts :response) ethereum_common::AccountsResponse)

(defmethod ethereum_common::AccountsRequest
  (:response () (instance ethereum_common::AccountsResponse :init)))

(setf (get ethereum_common::AccountsRequest :md5sum-) "031c4bb89ac5ec75fbacab5f05cfa129")
(setf (get ethereum_common::AccountsRequest :datatype-) "ethereum_common/AccountsRequest")
(setf (get ethereum_common::AccountsRequest :definition-)
      "---
Address[] accounts


================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address
")

(setf (get ethereum_common::AccountsResponse :md5sum-) "031c4bb89ac5ec75fbacab5f05cfa129")
(setf (get ethereum_common::AccountsResponse :datatype-) "ethereum_common/AccountsResponse")
(setf (get ethereum_common::AccountsResponse :definition-)
      "---
Address[] accounts


================================================================================
MSG: ethereum_common/Address
# Ethereum address message
string address
")



(provide :ethereum_common/Accounts "031c4bb89ac5ec75fbacab5f05cfa129")


