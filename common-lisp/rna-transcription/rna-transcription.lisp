(in-package #:cl-user)
(defpackage #:rna-transcription
  (:use #:cl)
  (:export #:to-rna))
(in-package #:rna-transcription)

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (map 'string #'nuclemap str))


(defun nuclemap (c)
  (case c

    (#\G  #\C )
    (#\C  #\G )
    (#\T  #\A )
    (#\A  #\U )))





  ;; (cond
  ;;   ((eq c #\G ) #\C )
  ;;   ((eq c #\C ) #\G )
  ;;   ((eq c #\T ) #\A )
  ;;   ((eq c #\A ) #\U )))

