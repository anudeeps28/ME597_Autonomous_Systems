; Auto-generated. Do not edit!


(cl:in-package lab_1_pkg-srv)


;//! \htmlinclude CustomService-request.msg.html

(cl:defclass <CustomService-request> (roslisp-msg-protocol:ros-message)
  ((arg_1
    :reader arg_1
    :initarg :arg_1
    :type cl:integer
    :initform 0))
)

(cl:defclass CustomService-request (<CustomService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab_1_pkg-srv:<CustomService-request> is deprecated: use lab_1_pkg-srv:CustomService-request instead.")))

(cl:ensure-generic-function 'arg_1-val :lambda-list '(m))
(cl:defmethod arg_1-val ((m <CustomService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab_1_pkg-srv:arg_1-val is deprecated.  Use lab_1_pkg-srv:arg_1 instead.")
  (arg_1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomService-request>) ostream)
  "Serializes a message object of type '<CustomService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arg_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arg_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'arg_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'arg_1)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomService-request>) istream)
  "Deserializes a message object of type '<CustomService-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arg_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arg_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'arg_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'arg_1)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomService-request>)))
  "Returns string type for a service object of type '<CustomService-request>"
  "lab_1_pkg/CustomServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomService-request)))
  "Returns string type for a service object of type 'CustomService-request"
  "lab_1_pkg/CustomServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomService-request>)))
  "Returns md5sum for a message object of type '<CustomService-request>"
  "1de2a7958fd3947b5dd3ec41292a1bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomService-request)))
  "Returns md5sum for a message object of type 'CustomService-request"
  "1de2a7958fd3947b5dd3ec41292a1bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomService-request>)))
  "Returns full string definition for message of type '<CustomService-request>"
  (cl:format cl:nil "# CustomService.srv~%# Request fields~%uint32 arg_1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomService-request)))
  "Returns full string definition for message of type 'CustomService-request"
  (cl:format cl:nil "# CustomService.srv~%# Request fields~%uint32 arg_1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomService-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomService-request
    (cl:cons ':arg_1 (arg_1 msg))
))
;//! \htmlinclude CustomService-response.msg.html

(cl:defclass <CustomService-response> (roslisp-msg-protocol:ros-message)
  ((out_1
    :reader out_1
    :initarg :out_1
    :type cl:string
    :initform ""))
)

(cl:defclass CustomService-response (<CustomService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab_1_pkg-srv:<CustomService-response> is deprecated: use lab_1_pkg-srv:CustomService-response instead.")))

(cl:ensure-generic-function 'out_1-val :lambda-list '(m))
(cl:defmethod out_1-val ((m <CustomService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab_1_pkg-srv:out_1-val is deprecated.  Use lab_1_pkg-srv:out_1 instead.")
  (out_1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomService-response>) ostream)
  "Serializes a message object of type '<CustomService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'out_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'out_1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomService-response>) istream)
  "Deserializes a message object of type '<CustomService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'out_1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'out_1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomService-response>)))
  "Returns string type for a service object of type '<CustomService-response>"
  "lab_1_pkg/CustomServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomService-response)))
  "Returns string type for a service object of type 'CustomService-response"
  "lab_1_pkg/CustomServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomService-response>)))
  "Returns md5sum for a message object of type '<CustomService-response>"
  "1de2a7958fd3947b5dd3ec41292a1bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomService-response)))
  "Returns md5sum for a message object of type 'CustomService-response"
  "1de2a7958fd3947b5dd3ec41292a1bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomService-response>)))
  "Returns full string definition for message of type '<CustomService-response>"
  (cl:format cl:nil "# Response fields~%string out_1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomService-response)))
  "Returns full string definition for message of type 'CustomService-response"
  (cl:format cl:nil "# Response fields~%string out_1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'out_1))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomService-response
    (cl:cons ':out_1 (out_1 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomService)))
  'CustomService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomService)))
  'CustomService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomService)))
  "Returns string type for a service object of type '<CustomService>"
  "lab_1_pkg/CustomService")