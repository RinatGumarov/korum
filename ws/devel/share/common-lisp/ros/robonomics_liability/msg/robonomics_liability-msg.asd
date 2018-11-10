
(cl:in-package :asdf)

(defsystem "robonomics_liability-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Liability" :depends-on ("_package_Liability"))
    (:file "_package_Liability" :depends-on ("_package"))
  ))