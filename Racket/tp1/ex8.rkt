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


;(collatz? 13)




(define (collatz-list n)

  (cond 
  ((= n 1) '(1))
  ((even? n)(cons n (collatz-list (/ n 2))))
  (else (cons n (collatz-list (+ (* 3 n ) 1 ))))
  )
)


(collatz-list 13)