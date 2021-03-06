; Auto-generated. Do not edit!


(cl:in-package action_test-msg)


;//! \htmlinclude MessageActionGoal.msg.html

(cl:defclass <MessageActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type action_test-msg:MessageGoal
    :initform (cl:make-instance 'action_test-msg:MessageGoal)))
)

(cl:defclass MessageActionGoal (<MessageActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name action_test-msg:<MessageActionGoal> is deprecated: use action_test-msg:MessageActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MessageActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_test-msg:header-val is deprecated.  Use action_test-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <MessageActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_test-msg:goal_id-val is deprecated.  Use action_test-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MessageActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_test-msg:goal-val is deprecated.  Use action_test-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageActionGoal>) ostream)
  "Serializes a message object of type '<MessageActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageActionGoal>) istream)
  "Deserializes a message object of type '<MessageActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageActionGoal>)))
  "Returns string type for a message object of type '<MessageActionGoal>"
  "action_test/MessageActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageActionGoal)))
  "Returns string type for a message object of type 'MessageActionGoal"
  "action_test/MessageActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageActionGoal>)))
  "Returns md5sum for a message object of type '<MessageActionGoal>"
  "d8ce217cf0132b4150a3b2bac41753f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageActionGoal)))
  "Returns md5sum for a message object of type 'MessageActionGoal"
  "d8ce217cf0132b4150a3b2bac41753f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageActionGoal>)))
  "Returns full string definition for message of type '<MessageActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MessageGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: action_test/MessageGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Washes your laundry~%#~%# goal message = the request~%float64 number		# the number of items to wash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageActionGoal)))
  "Returns full string definition for message of type 'MessageActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MessageGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: action_test/MessageGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Washes your laundry~%#~%# goal message = the request~%float64 number		# the number of items to wash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
