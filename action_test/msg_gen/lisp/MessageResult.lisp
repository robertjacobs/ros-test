; Auto-generated. Do not edit!


(cl:in-package action_test-msg)


;//! \htmlinclude MessageResult.msg.html

(cl:defclass <MessageResult> (roslisp-msg-protocol:ros-message)
  ((itemsWashed
    :reader itemsWashed
    :initarg :itemsWashed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MessageResult (<MessageResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name action_test-msg:<MessageResult> is deprecated: use action_test-msg:MessageResult instead.")))

(cl:ensure-generic-function 'itemsWashed-val :lambda-list '(m))
(cl:defmethod itemsWashed-val ((m <MessageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_test-msg:itemsWashed-val is deprecated.  Use action_test-msg:itemsWashed instead.")
  (itemsWashed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageResult>) ostream)
  "Serializes a message object of type '<MessageResult>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'itemsWashed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageResult>) istream)
  "Deserializes a message object of type '<MessageResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'itemsWashed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageResult>)))
  "Returns string type for a message object of type '<MessageResult>"
  "action_test/MessageResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageResult)))
  "Returns string type for a message object of type 'MessageResult"
  "action_test/MessageResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageResult>)))
  "Returns md5sum for a message object of type '<MessageResult>"
  "0f91501cf64010ab35adfe3f2eaf4bc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageResult)))
  "Returns md5sum for a message object of type 'MessageResult"
  "0f91501cf64010ab35adfe3f2eaf4bc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageResult>)))
  "Returns full string definition for message of type '<MessageResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result message~%float64 itemsWashed	# the number of items washed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageResult)))
  "Returns full string definition for message of type 'MessageResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result message~%float64 itemsWashed	# the number of items washed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageResult>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageResult
    (cl:cons ':itemsWashed (itemsWashed msg))
))