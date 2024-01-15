; -------------------------------- 3Sum Closest 16. --------------------------------
(defmacro unsafe-min (a b target)
         `(cond 
            ((equal nil ,a) ,b)
            ((> (abs (- ,a ,target)) (abs (- ,b ,target))) ,b)
            (t ,a)))

(defun 3sum-closest (nums-in target)
  (let ((nums (sort nums-in '<)) closest left right ans (curr-sum 0))
    (loop for i to (length nums) do
      (setf left (+ i 1))
      (setf right (- (length nums) 1))
      (loop while (< left right) do 
              (setf curr-sum (+ (nth left nums) (nth i nums) (nth right nums)))
              (let (new-closest) 
                (setf new-closest (unsafe-min closest curr-sum target))
                (when (not (equal closest new-closest))
                            (setf closest new-closest)
                            (setf ans (list (nth left nums) (nth i nums) (nth right nums))))
                (setf right (- right 1))
                (setf left (+ left 1)))))
    (print ans)
    closest))