#lang racket

(define (writeln x)
  (display x)
  (newline))


(define (collatz? n )
    (writeln n)
    (cond 
    ((= n 1 )#t)
    ((even? n)
        (collatz? (/ n 2)))
    (else
        (collatz? (+(* 3 n) 1)))
    )


)


(collatz? 13)