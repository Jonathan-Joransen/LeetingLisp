; -------------------------------- 3Sum 15. --------------------------------
(defun three-sum (nums-in)
  (let ((nums (sort nums-in '<)) (set ()) left right curr-sum)
    (loop for i to (length nums) do
      (setf left (+ i 1))
      (setf right (- (length nums) 1))
      (loop while (< left right) do 
              (setf curr-sum (+ (nth left nums) (nth i nums) (nth right nums)))
              (if (equal 0 curr-sum) 
                  (progn 
                        (pushnew (list (nth left nums) (nth i nums) (nth right nums)) set :test #'(lambda (x y) (equal x y))) 
                        (setf right (- right 1))
                        (setf left (+ left 1)))
                  (if (> curr-sum 0) (setf right (- right 1)) (setf left (+ left 1))))))
    set))
