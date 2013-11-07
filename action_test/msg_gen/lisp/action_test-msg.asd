
(cl:in-package :asdf)

(defsystem "action_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MessageActionFeedback" :depends-on ("_package_MessageActionFeedback"))
    (:file "_package_MessageActionFeedback" :depends-on ("_package"))
    (:file "MessageActionGoal" :depends-on ("_package_MessageActionGoal"))
    (:file "_package_MessageActionGoal" :depends-on ("_package"))
    (:file "MessageAction" :depends-on ("_package_MessageAction"))
    (:file "_package_MessageAction" :depends-on ("_package"))
    (:file "MessageGoal" :depends-on ("_package_MessageGoal"))
    (:file "_package_MessageGoal" :depends-on ("_package"))
    (:file "MessageResult" :depends-on ("_package_MessageResult"))
    (:file "_package_MessageResult" :depends-on ("_package"))
    (:file "MessageFeedback" :depends-on ("_package_MessageFeedback"))
    (:file "_package_MessageFeedback" :depends-on ("_package"))
    (:file "MessageActionResult" :depends-on ("_package_MessageActionResult"))
    (:file "_package_MessageActionResult" :depends-on ("_package"))
  ))