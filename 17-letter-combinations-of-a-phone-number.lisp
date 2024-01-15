; -------------------------------- Letter Combinations of Phone Number 17. --------------------------------
(defun letters-map (num)
    (cond 
     ((equal num #\2) '("a" "b" "c"))
     ((equal num #\3) '("d" "e" "f"))
     ((equal num #\4) '("g" "h" "i"))
     ((equal num #\5) '("j" "k" "l"))
     ((equal num #\6) '("m" "n" "o"))
     ((equal num #\7) '("p" "q" "r" "s"))
     ((equal num #\8) '("t" "u" "v"))
     ((equal num #\9) '("w" "x" "y" "z"))))

(defun letter-combinations (digits)
    (let ((ans '("")) (curr-ans '()))
        (loop for digit across digits do
            (let ((chars (letters-map digit)))
                (loop for idx from 0 
                    for ch in chars do 
                    (loop for item in ans do
                        (push (concatenate 'string item ch) curr-ans)))
            (setf ans curr-ans)
            (setf curr-ans '())))
        (if (equal '("") ans) '() ans)))


; Tests
; (equal (letter-combinations "23") '("af" "bf" "cf" "ae" "be" "ce" "ad" "bd" "cd"))
; (equal (letter-combinations "2") '("c" "b" "a"))
; (equal (letter-combinations "") '())