#lang racket


; statistically scoped ==> 3   g cannot x ftom "f" so takes the global x    
; dynamically scoped ==>  7

;static

(define x 1)
(define  (f x) (g 2))
(define (g y) (+ x y))
(f 3)


;dynamic

(define (f1 x)
  (g1 2 x))

(define (g1 y x)
  (+ x y))

(f1 5)