
; -------------------------------- Add Linked Lists 2. --------------------------------
; for testing
; (defun list-node (val &optional (next nil))
;   (list :value val :next next))

; (defun make-list-node-test (val1 val2 val3)
;   (let* 
;       ((node1 (list-node val1))
;       (node2 (list-node val2 node1)))
;     (list-node val3 node2)))

; (defun list1 () (make-list-node-test 2 4 3))
; (defun list2 () (make-list-node-test 5 6 4))

(defun add-node-nums (inNode1 inNode2)
  (let* 
      ((dummy (list-node nil))
      (node1 inNode1)
      (node2 inNode2)
      (curr dummy)
      (sum 0)
      (over 0))
    (loop 
      (let*
         ((val1 (if (not node1) 0 (getf node1 :value)))
         (val2 (if (not node2) 0 (getf node2 :value)))
         (new nil))
        (setf sum (+ val1 val2))
        (when (> over 0) (setf sum (+ sum over)))
        (setf over (if (> sum 9)
                       (- sum 9)
                       0))
       ; when no more sums return first node
       (when (equal 0 (+ sum over))
        (return (getf dummy :next))) 
       ; put sum in node
       (setf new (list-node (mod sum 10)))
       (setf (getf curr :next) new)
       (setf curr (getf curr :next))
       (setf node1 (getf node1 :next))
       (setf node2 (getf node2 :next))
       (format t "~a ~a ~a ~%" sum over (equal 0 (+ sum over))))
      )))