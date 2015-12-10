#|;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
HW6/5 11/17/15
ScalarProductRecursive.rkt by Eric Gonzalez
Calculates the scalar product of the given 2 vectors using recursion
produces an error message when the vectors have different lengths
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;|#
#lang racket
(define scalar-product 
  (lambda (x y)
    ;If they equal the same size
    (cond ((= (vector-length x) (vector-length y))
            ;FInd scalar product
           (recur (vector->list x) (vector->list y)))
           ;else the size are not the same
          (else (display "Error: different sizes of vectors!")))))
;Calls function recursively
(define recur
    (lambda (list1 list2)
      (cond ((null? (cdr list1)) (* (car list1) (car list2)))
            (else (+ (* (car list1) (car list2))
                     (recur (cdr list1) (cdr list2)))))))
