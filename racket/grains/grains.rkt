#lang racket

(provide square total)

(define (square num)
  (expt 2 (- num 1)))

(define (total) (- (square 65) 1))
  
