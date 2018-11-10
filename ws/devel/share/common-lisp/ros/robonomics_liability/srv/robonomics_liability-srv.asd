
(cl:in-package :asdf)

(defsystem "robonomics_liability-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FinishLiability" :depends-on ("_package_FinishLiability"))
    (:file "_package_FinishLiability" :depends-on ("_package"))
    (:file "StartLiability" :depends-on ("_package_StartLiability"))
    (:file "_package_StartLiability" :depends-on ("_package"))
  ))