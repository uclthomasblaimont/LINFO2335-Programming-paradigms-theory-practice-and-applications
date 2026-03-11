#lang racket 


;Write a function duplicate which takes a list as input and returns the same list where every element has been duplicated. For example:

(define (duplicate l)

  (if (null? l) '()

      (cons (car l)
            (cons (car l)
                  (duplicate (cdr l))
            )
      )
  )
)


(duplicate '(Do duck quacks echo?))