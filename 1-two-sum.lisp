; -------------------------------- Two Sum --------------------------------
(defun two-sum (nums target)
  (let ((num-table (make-hash-table)))
    (dotimes (idx (length nums))
      (let* ((needed (- target (nth idx nums)))
              (value (gethash needed num-table)))
        (if value
          (return (format t "ans is ~d=~d ~d=~d~%" needed (gethash needed num-table) (nth idx nums) idx))
          (setf (gethash (nth idx nums) num-table) idx))))))
