;;; roman-numerals.el --- roman-numerals Exercise (exercism)

;;; -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(defun to-roman (num)
  "Convert NUM to roman numeral."
  (let ((thousands '((0 . nil)
                     (1 . "M")
                     (2 . "MM")
                     (3 . "MMM")))
        (hundreds '((0 . nil)
                    (1 . "C")
                    (2 . "CC")
                    (3 . "CCC")
                    (4 . "CD")
                    (5 . "D")
                    (6 . "DC")
                    (7 . "DCC")
                    (8 . "DCCC")
                    (9 . "CM")))
        (tens '((0 . nil)
                (1 . "X")
                (2 . "XX")
                (3 . "XXX")
                (4 . "XL")
                (5 . "L")
                (6 . "LX")
                (7 . "LXX")
                (8 . "LXXX")
                (9 . "XC")))
        (units '((0 . nil)
                 (1 . "I")
                 (2 . "II")
                 (3 . "III")
                 (4 . "IV")
                 (5 . "V")
                 (6 . "VI")
                 (7 . "VII")
                 (8 . "VIII")
                 (9 . "IX")))
        (digits (num-to-digits num)))

    (concat (alist-get (cadddr digits) thousands)
            (alist-get (caddr digits) hundreds)
            (alist-get (cadr digits) tens)
            (alist-get (car digits) units))))


(defun num-to-digits (num)
  "Return the digits of NUM, in reversed order."
  (if (zerop num) ()
    (cons (mod num 10) (num-to-digits (/ num 10)))))

(provide 'roman-numerals)
;;; roman-numerals.el ends here
