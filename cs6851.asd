
(in-package :asdf-user)

(defvar +cs6851-dependencies+ '("pointer-machine"))

(dolist (pkg +cs6851-dependencies+)
  (load (merge-pathnames (make-pathname :directory pkg
                                        :name pkg
                                        :type "asd"))))

(asdf:defsystem :cs6851
  :description "Implementations of data structures mentioned in MIT's Computer Science 6.851 course on Advanced Data Structures."
  :author "Patrick Stein <pat@nklein.com>"
  :version "0.1.20161108"
  :license "UNLICENSE"
  :depends-on #.+cs6851-dependencies+
  :components ((:static-file "UNLICENSE.txt")))
