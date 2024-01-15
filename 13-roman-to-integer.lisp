; -------------------------------- Roman to Int 13. --------------------------------
(defun roman-to-int (roman)
  (let* ((roman-nums "IVXLCDM")
         (nums '(1 5 10 50 100 500 1000))
         (roman-as-nums (loop for char across roman collect (nth (position char roman-nums) nums))))
    (loop for (num1 num2) on roman-as-nums 
           sum (if (and num2 (< num1 num2)) (- num1) num1))))
