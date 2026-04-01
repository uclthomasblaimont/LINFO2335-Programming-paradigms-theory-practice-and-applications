#lang racket

; if you run this piece of code , you get an error 
; Why ?  the assignations are made in //  so "y" cannot see  the new x , he uses the outside x
;3_2.rkt:7:9: x: unbound identifier
;(let ((x 10) (y x)) (* x y))

; here the assignations are sequentials , each variable can see the previous variables
(let* ((x 10)(y x)) (* x y))


; here is the equivalence  the second "let" is in the first "let" so y can see  x = 10


(let (
    (x 10)) 
    (let 
        ((y x)) (* y x)
    )
)
(* 10 10)