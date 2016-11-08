(in-package #:pointer-machine)

(defmacro define-pointer-machine (name &body field-names)
  (labels ((keyword-for-name (name)
             (intern (string name) :keyword))
           (name-to-field (name)
             `(,name :initform nil
                     :initarg ,(keyword-for-name name))))
    `(defclass ,name (pointer-machine)
       ,(mapcar #'name-to-field field-names))))
