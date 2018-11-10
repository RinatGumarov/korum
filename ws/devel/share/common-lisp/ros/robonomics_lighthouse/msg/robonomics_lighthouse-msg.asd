
(cl:in-package :asdf)

(defsystem "robonomics_lighthouse-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :robonomics_msgs-msg
)
  :components ((:file "_package")
    (:file "Deal" :depends-on ("_package_Deal"))
    (:file "_package_Deal" :depends-on ("_package"))
  ))