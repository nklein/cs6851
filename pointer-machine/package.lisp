
(defpackage #:pointer-machine
  (:use #:cl)
  (:export #:define-pointer-machine
           #:walk-pointer-machine))

(defpackage #:pointer-machine-example
  (:use #:cl #:pointer-machine))
