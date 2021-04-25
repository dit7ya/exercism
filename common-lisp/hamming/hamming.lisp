(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."

  (unless (/= (length dna1) (length dna2))

    (count nil
           (map 'list (lambda (x y) (char= x y))
                dna1
                dna2))))
