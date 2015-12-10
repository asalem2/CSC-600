#|;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
HW6/5 11/17/15
ScalarProductDoLoop.rkt by Eric Gonzalez

Calculates the scalar product of the given 2 vectors using a do loop
produces an error message when the vectors have different lengths or is empty
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;|#
#lang racket
(define scalar-product 
  (lambda (x y)
    ;If they equal the same size
    (cond((= (vector-length x) (vector-length y))
          ;FInd scalar product
           (let ((z 0))
                  (do ((i 0 (add1 i)))
                    ((>= i (vector-length x)) (display z))
                    (set! z
                          (+ z (* (vector-ref x i) (vector-ref y i)))))))
         ;else the size are not the same
          (else (display "Error: different sizes of vectors!")))))
