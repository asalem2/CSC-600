#|;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
HW6/2 11/17/15
StandardDeviation.rkt by Eric Gonzalez
Calculates the standard deviation sigma from the given number(s)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;|#
#lang racket
;Squares the number
(define (squarenumber x)
  (* x x))
;Add up all the number son the list
(define (listsum lst)
  (if (null? lst) 0
      (+ (car lst) (listsum (cdr lst)))))
;Square all the number in the list
(define (squarelist lst)
  (if (null? lst) 0
      (+ (squarenumber (car lst)) (squarelist (cdr lst)))))
;Initital function
(define sigma (lambda x(sqrt (- (/ (squarelist x) (length x))
                                 (squarenumber (/ (listsum x) (length x)))))))