#|;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
HW6/4 	11//17/15
FindMax.rkt by Eric Gonzalez 
calculates the maximum of function f within the interval of [x1,x2]
using the trisection method and finds the coordinate of xmax 
with accuacy of 6 significant decimal digits
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;|#
#lang racket
(define (fmax X Y funct)  
  (let* ((trisect (/ (- Y X) 3.))
         (xtri (+ X trisect))
         (ytri (- Y trisect)))
          ;using abs library function
          ;if absolute value of functX - functY then divide (X + Y)/2
         ;basically keep running until reaching precision of 0.0000001
    (cond [(< (abs (- (funct X) (funct Y))) .0000001)
           (/ (+ Y X) 2.)]
          ;elseif (funct xtri < funct ytri) then findmax of X and ytri
          ;basically run again with a trisected Y value
          ;recursive call
          [(> (funct xtri) (funct ytri)) 
           (fmax X ytri funct)]
          ;Y must be bigger than xtri
          ;keep Y and run again with trisected x value
          [else (fmax xtri Y funct)])))
