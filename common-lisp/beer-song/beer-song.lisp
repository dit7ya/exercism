(in-package #:cl-user)
(defpackage #:beer
  (:use #:common-lisp)
  (:export #:verse #:sing))

(in-package #:beer)

(defun verse (n)
  "Returns a string verse for a given number."
  (cond ((= 0 n) "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
")
        ((= 1 n) "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
") 
        (t (format nil "~A bottles of beer on the wall, ~A bottles of beer.
Take one down and pass it around, ~A bottle~P of beer on the wall.
"
                   n
                   n
                   (- n 1)
                   (- n 1)))))

(defun sing (start &optional (end 0))
  "Returns a string of verses for a given range of numbers."
  (format nil "~{~a~%~}" (loop :for i :from start :above (- end 1) :collect (verse i) )))
