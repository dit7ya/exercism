(in-package #:cl-user)
(defpackage #:bob
  (:use #:cl)
  (:export #:response))
(in-package #:bob)

(defun upcase-p (str)
  (and (equal str (string-upcase str))
       (not (equal  str (string-downcase str)))))

(defun response (hey-bob)
  (let ((phrase (string-trim 
                 '(#\Space #\Newline #\Tab)
                 hey-bob)))
    (cond
      ((string-equal phrase "") "Fine. Be that way!")
      ((and (uiop:string-suffix-p phrase "?") (upcase-p phrase)) "Calm down, I know what I'm doing!") 
      ((uiop:string-suffix-p phrase "?") "Sure.")
      ((upcase-p phrase) "Whoa, chill out!")
      (:t "Whatever."))))

