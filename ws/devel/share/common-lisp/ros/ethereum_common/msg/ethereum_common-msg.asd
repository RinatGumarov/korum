
(cl:in-package :asdf)

(defsystem "ethereum_common-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Address" :depends-on ("_package_Address"))
    (:file "_package_Address" :depends-on ("_package"))
    (:file "ApprovalEvent" :depends-on ("_package_ApprovalEvent"))
    (:file "_package_ApprovalEvent" :depends-on ("_package"))
    (:file "TransferEvent" :depends-on ("_package_TransferEvent"))
    (:file "_package_TransferEvent" :depends-on ("_package"))
    (:file "UInt256" :depends-on ("_package_UInt256"))
    (:file "_package_UInt256" :depends-on ("_package"))
  ))