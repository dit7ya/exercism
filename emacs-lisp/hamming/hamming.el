;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:

(defun hamming-distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands DNA1 DNA2."

  (if (/= (length dna1) (length dna2))
      (error "Strands must be of same length")
    (cl-count 'nil
              (cl-mapcar (lambda (x y) (equal x y))
                         dna1
                         dna2))))

(provide 'hamming)
;;; hamming.el ends here
