
(in-package #:pointer-machine-example)

(define-pointer-machine binary-search-tree
  value
  left
  right)

(let (nodes)
  (flet ((bst (value &key left right)
           (make-instance 'binary-search-tree
                          :value value
                          :left left
                          :right right))
         (collect-bst-value (node)
           (push (slot-value node 'value) nodes)))
    (let* ((a (bst 'a))
           (d (bst 'd))
           (c (bst 'c :right d))
           (b (bst 'b :left a :right c)))
      (walk-pointer-machine #'collect-bst-value b)))
  (nreverse nodes))
