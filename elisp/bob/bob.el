;;; bob.el --- Bob exercise (exercism)

;;; Commentary:

;;; Code:

(defun response-for(phrase)
  ;; (setq phrase )

  (if (equal (string-blank-p phrase) 0)
      (message "Fine. Be that way!" )

    (if (string= (substring phrase -1) "?")
        (message "something")

      ;; (if TODO)
      (if (string= (upcase string) string)
          (message "Whoa, chill out!" )
        (message "Whatever." )))

    )

  )


(provide 'bob)
;;; bob.el ends here
