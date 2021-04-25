(import (rnrs))

(define (leap-year? year)
  (or (zero? (remainder year 400))
      (and (not (zero? (remainder year 100)))
           (zero? (remainder year 4)))))

