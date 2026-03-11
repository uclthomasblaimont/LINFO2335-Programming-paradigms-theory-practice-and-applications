#lang racket

(define (how-many x l)
    (cond 

        ((null? l) 0)

        ((equal? x (car l))

            (+ 1 (how-many x (cdr l))))

        (else 
            (how-many x (cdr l)))
    )
)


(how-many 4 '(1 4 5 2 3 4 a b 4 4 c 4))