(in-package #:pointer-machine)

(defgeneric walk-pointer-machine (fn root)
  (:method ((fn function) (root pointer-machine))
    (let* ((visited (make-hash-table :test 'eql))
           (root-class (class-of root))
           (slots (closer-mop:compute-slots root-class)))
      (labels ((walk (node)
                 (funcall fn node)
                 (dolist (slot slots)
                   (let* ((loc (closer-mop:slot-definition-location slot))
                          (val (closer-mop:standard-instance-access node loc)))
                     (when (typep val root-class)
                       (unless (gethash val visited)
                         (setf (gethash val visited) t)
                         (walk val)))))))
        (walk root)))))
