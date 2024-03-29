; -------------------------------- Int to Roman 12. --------------------------------
(defmacro while-num (limit char)
  `(loop while (>= alg-num ,limit) do
          (setf alg-num (- alg-num ,limit))
          (format ans "~a~a" ans ,char)))

(defun int-to-roman (alg-num)
  (let ((ans ""))
    (while-num 1000 "M")
    (while-num 900 "CM")
    (while-num 500 "D")
    (while-num 400 "CD")
    (while-num 100 "C")
    (while-num 90 "XC")
    (while-num 50 "L")
    (while-num 40 "XL")
    (while-num 10 "X")
    (while-num 9 "IX")
    (while-num 5 "V")
    (while-num 4 "IV")
    (while-num 1 "I")
    ans)
  )
