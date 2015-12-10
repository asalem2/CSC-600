#|;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
HW6/3 11/17/15
Histogram.rkt  by Eric Gonzalez
Prints a histogram using a recursive procedure and the line in (a)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;|#
#lang racket
(define (line n)
  (cond ((< n 1) (newline))
        (else (display "*") (line (- n 1)))))

(define (histogram list)
  (if (null? list) (newline)
      (begin (line (car list))
             (histogram (cdr list)))))