#lang racket

;(define (my-if condition true-expr false-expr)
;  (cond
;    (condition true-expr)
;    (else false-expr)))



; here the macro will transform the code before the execution

; " when you see (my-if .... ) transforms into (if condition true-expr false-expr)"

; (my-if (positive? -4) (display "positive") (display "negative")) becomes  (if (positive? -4)(display "positive")(display "negative"))

(define-syntax my-if
  (syntax-rules ()
    ((my-if condition true-expr false-expr)
     (if condition true-expr false-expr))))


(define x 4)

(my-if (positive?  ( +  1 x)  ) x   x )
(my-if (positive? 44)
       (display "positive\n")
       (display "negative\n"))

; scheme is going to evaluate all arguments before the execution 