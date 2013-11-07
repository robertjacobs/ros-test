; Auto-generated. Do not edit!


(cl:in-package service_test-srv)


;//! \htmlinclude Message-request.msg.html

(cl:defclass <Message-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:float
    :initform 0.0))
)

(cl:defclass Message-request (<Message-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Message-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Message-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_test-srv:<Message-request> is deprecated: use service_test-srv:Message-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <Message-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_test-srv:number-val is deprecated.  Use service_test-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Message-request>) ostream)
  "Serializes a message object of type '<Message-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Message-request>) istream)
  "Deserializes a message object of type '<Message-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'number) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Message-request>)))
  "Returns string type for a service object of type '<Message-request>"
  "service_test/MessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Message-request)))
  "Returns string type for a service object of type 'Message-request"
  "service_test/MessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Message-request>)))
  "Returns md5sum for a message object of type '<Message-request>"
  "57ffe8ccf80221db899192d7c80330c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Message-request)))
  "Returns md5sum for a message object of type 'Message-request"
  "57ffe8ccf80221db899192d7c80330c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Message-request>)))
  "Returns full string definition for message of type '<Message-request>"
  (cl:format cl:nil "~%~%~%float64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Message-request)))
  "Returns full string definition for message of type 'Message-request"
  (cl:format cl:nil "~%~%~%float64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Message-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Message-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Message-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude Message-response.msg.html

(cl:defclass <Message-response> (roslisp-msg-protocol:ros-message)
  ((numberIncreased
    :reader numberIncreased
    :initarg :numberIncreased
    :type cl:float
    :initform 0.0))
)

(cl:defclass Message-response (<Message-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Message-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Message-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_test-srv:<Message-response> is deprecated: use service_test-srv:Message-response instead.")))

(cl:ensure-generic-function 'numberIncreased-val :lambda-list '(m))
(cl:defmethod numberIncreased-val ((m <Message-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_test-srv:numberIncreased-val is deprecated.  Use service_test-srv:numberIncreased instead.")
  (numberIncreased m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Message-response>) ostream)
  "Serializes a message object of type '<Message-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'numberIncreased))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Message-response>) istream)
  "Deserializes a message object of type '<Message-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'numberIncreased) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Message-response>)))
  "Returns string type for a service object of type '<Message-response>"
  "service_test/MessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Message-response)))
  "Returns string type for a service object of type 'Message-response"
  "service_test/MessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Message-response>)))
  "Returns md5sum for a message object of type '<Message-response>"
  "57ffe8ccf80221db899192d7c80330c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Message-response)))
  "Returns md5sum for a message object of type 'Message-response"
  "57ffe8ccf80221db899192d7c80330c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Message-response>)))
  "Returns full string definition for message of type '<Message-response>"
  (cl:format cl:nil "~%float64 numberIncreased~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Message-response)))
  "Returns full string definition for message of type 'Message-response"
  (cl:format cl:nil "~%float64 numberIncreased~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Message-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Message-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Message-response
    (cl:cons ':numberIncreased (numberIncreased msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Message)))
  'Message-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Message)))
  'Message-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Message)))
  "Returns string type for a service object of type '<Message>"
  "service_test/Message")