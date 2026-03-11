#lang racket


; dont forget the recursion  ; if n > 0 do the sum
(define (minus-pi-over-4 i k)
    (if(> i k)
        0
        (+( / (expt -1 i) (- (* 2 i ) 1))
            (minus-pi-over-4 ( + i 1) k)
        )
    )

)

(minus-pi-over-4 1 4)