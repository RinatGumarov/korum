
(cl:in-package :asdf)

(defsystem "robonomics_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Demand" :depends-on ("_package_Demand"))
    (:file "_package_Demand" :depends-on ("_package"))
    (:file "Offer" :depends-on ("_package_Offer"))
    (:file "_package_Offer" :depends-on ("_package"))
    (:file "Result" :depends-on ("_package_Result"))
    (:file "_package_Result" :depends-on ("_package"))
  ))