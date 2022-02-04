;; Auto-generated. Do not edit!


(when (boundp 'lab_1_pkg::CustomMessage)
  (if (not (find-package "LAB_1_PKG"))
    (make-package "LAB_1_PKG"))
  (shadow 'CustomMessage (find-package "LAB_1_PKG")))
(unless (find-package "LAB_1_PKG::CUSTOMMESSAGE")
  (make-package "LAB_1_PKG::CUSTOMMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude CustomMessage.msg.html


(defclass lab_1_pkg::CustomMessage
  :super ros::object
  :slots (_text _ctr ))

(defmethod lab_1_pkg::CustomMessage
  (:init
   (&key
    ((:text __text) "")
    ((:ctr __ctr) 0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _ctr (round __ctr))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:ctr
   (&optional __ctr)
   (if __ctr (setq _ctr __ctr)) _ctr)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; uint32 _ctr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; uint32 _ctr
       (write-long _ctr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _ctr
     (setq _ctr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lab_1_pkg::CustomMessage :md5sum-) "1f270c9e1ed486ac779de04b681128fb")
(setf (get lab_1_pkg::CustomMessage :datatype-) "lab_1_pkg/CustomMessage")
(setf (get lab_1_pkg::CustomMessage :definition-)
      "string text
uint32 ctr

")



(provide :lab_1_pkg/CustomMessage "1f270c9e1ed486ac779de04b681128fb")


