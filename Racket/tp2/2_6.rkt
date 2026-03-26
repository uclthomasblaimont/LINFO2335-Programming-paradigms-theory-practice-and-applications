#lang racket


(define (cube x)
(* x x x))



( define ( sum-cubes a b )
( if (> a b )
0
(+ ( cube a ) ( sum-cubes (+ a 1 ) b ) ) ) )


(sum-cubes 0 3)

;cube(0) + cube(1) + cube(2) + cube(3)