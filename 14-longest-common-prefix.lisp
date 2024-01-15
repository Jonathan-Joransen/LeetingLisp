; -------------------------------- Longest Common Prefix 14. --------------------------------
(defun longest-common-prefix (strs)
  (if (not strs) (return-from longest-common-prefix "no prefix found"))
  (let ((prefix (nth 0 strs)))
    (dolist (s strs)
      (setf prefix (format nil "~{~A~}" 
                     (loop for i to (- (min (length prefix) (length s)) 1)
                      while (equal (char prefix i) (char s i))
                      collect (char prefix i)))))
    prefix))
 