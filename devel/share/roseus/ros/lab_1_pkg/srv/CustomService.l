;; Auto-generated. Do not edit!


(when (boundp 'lab_1_pkg::CustomService)
  (if (not (find-package "LAB_1_PKG"))
    (make-package "LAB_1_PKG"))
  (shadow 'CustomService (find-package "LAB_1_PKG")))
(unless (find-package "LAB_1_PKG::CUSTOMSERVICE")
  (make-package "LAB_1_PKG::CUSTOMSERVICE"))
(unless (find-package "LAB_1_PKG::CUSTOMSERVICEREQUEST")
  (make-package "LAB_1_PKG::CUSTOMSERVICEREQUEST"))
(unless (find-package "LAB_1_PKG::CUSTOMSERVICERESPONSE")
  (make-package "LAB_1_PKG::CUSTOMSERVICERESPONSE"))

(in-package "ROS")





(defclass lab_1_pkg::CustomServiceRequest
  :super ros::object
  :slots (_arg_1 ))

(defmethod lab_1_pkg::CustomServiceRequest
  (:init
   (&key
    ((:arg_1 __arg_1) 0)
    )
   (send-super :init)
   (setq _arg_1 (round __arg_1))
   self)
  (:arg_1
   (&optional __arg_1)
   (if __arg_1 (setq _arg_1 __arg_1)) _arg_1)
  (:serialization-length
   ()
   (+
    ;; uint32 _arg_1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _arg_1
       (write-long _arg_1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _arg_1
     (setq _arg_1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lab_1_pkg::CustomServiceResponse
  :super ros::object
  :slots (_out_1 ))

(defmethod lab_1_pkg::CustomServiceResponse
  (:init
   (&key
    ((:out_1 __out_1) "")
    )
   (send-super :init)
   (setq _out_1 (string __out_1))
   self)
  (:out_1
   (&optional __out_1)
   (if __out_1 (setq _out_1 __out_1)) _out_1)
  (:serialization-length
   ()
   (+
    ;; string _out_1
    4 (length _out_1)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _out_1
       (write-long (length _out_1) s) (princ _out_1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _out_1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _out_1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lab_1_pkg::CustomService
  :super ros::object
  :slots ())

(setf (get lab_1_pkg::CustomService :md5sum-) "1de2a7958fd3947b5dd3ec41292a1bb8")
(setf (get lab_1_pkg::CustomService :datatype-) "lab_1_pkg/CustomService")
(setf (get lab_1_pkg::CustomService :request) lab_1_pkg::CustomServiceRequest)
(setf (get lab_1_pkg::CustomService :response) lab_1_pkg::CustomServiceResponse)

(defmethod lab_1_pkg::CustomServiceRequest
  (:response () (instance lab_1_pkg::CustomServiceResponse :init)))

(setf (get lab_1_pkg::CustomServiceRequest :md5sum-) "1de2a7958fd3947b5dd3ec41292a1bb8")
(setf (get lab_1_pkg::CustomServiceRequest :datatype-) "lab_1_pkg/CustomServiceRequest")
(setf (get lab_1_pkg::CustomServiceRequest :definition-)
      "# CustomService.srv
# Request fields
uint32 arg_1
---
# Response fields
string out_1

")

(setf (get lab_1_pkg::CustomServiceResponse :md5sum-) "1de2a7958fd3947b5dd3ec41292a1bb8")
(setf (get lab_1_pkg::CustomServiceResponse :datatype-) "lab_1_pkg/CustomServiceResponse")
(setf (get lab_1_pkg::CustomServiceResponse :definition-)
      "# CustomService.srv
# Request fields
uint32 arg_1
---
# Response fields
string out_1

")



(provide :lab_1_pkg/CustomService "1de2a7958fd3947b5dd3ec41292a1bb8")


