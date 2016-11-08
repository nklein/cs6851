(in-package :asdf-user)

(asdf:defsystem :pointer-machine
  :description "Implementations of pointer machines as described in MIT's Computer Science 6.851 course on Advanced Data Structures."
  :author "Patrick Stein <pat@nklein.com>"
  :version "0.1.20161108"
  :license "UNLICENSE"
  :depends-on (#:closer-mop)
  :components ((:file "package")
               (:file "base" :depends-on ("package"))
               (:file "define" :depends-on ("package" "base"))
               (:file "walk" :depends-on ("package" "base"))
               (:file "example" :depends-on ("package"))))
