(in-package #:cl-user)
(defpackage #:word-count
  (:use #:cl)
  (:export #:count-words))

(ql:quickload "str")

(in-package #:word-count)

(defun count-to-alist (lst)
  "Given a list, return a alist with counts of unique items."
  (let ((alst '()))
    (mapcar (lambda (x) (if (assoc x alst :test 'equal)
                       (setf (cdr (assoc x alst :test 'equal)) (+ 1 (cdr (assoc x alst :test 'equal ))))
                       (push (cons x 1) alst)))
            lst)
    alst))

(defun count-words (sentence)
  (count-to-alist
    (mapcar (lambda (word) (ppcre:regex-replace-all "^'|'$" word ""))
        (remove-if (lambda (x) (equal x ""))
                   (uiop:split-string (ppcre:regex-replace-all "[^\\w']"
                                      (string-downcase sentence) " "))))))
