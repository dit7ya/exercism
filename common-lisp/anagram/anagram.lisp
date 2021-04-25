(in-package #:cl-user)
(defpackage #:anagram
  (:use #:common-lisp)
  (:export #:anagrams-for))

(ql:quickload "alexandria")

(in-package #:anagram)

(defun anagrams-for (subject candidates)
  "Returns a sublist of candidates which are anagrams of the subject."
  (remove-if-not (alexandria:curry #'anagram-p subject) candidates))

(defun anagram-p (str1 str2)
  "Return t if STR1 and STR2 have the same characters but not exactly the same. Order and case insensitive."

  (let ((str1down (string-downcase str1))
        (str2down (string-downcase str2)))

    (and (not (equal str1down str2down))
         (string= (sort (copy-seq str1down) #'char-lessp)
                  (sort (copy-seq str2down) #'char-lessp)))))

   


