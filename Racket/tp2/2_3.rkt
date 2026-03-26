#lang racket

; first class function  , a function  can be a variable , a parameter , return by another function
(define (square x) (* x x))

(define f square)

(f 3) ; 9




(define (filter p l)
    (cond 
        ((null? l) '()) ; base case 
        ((p (car l)) ; if predicat
        (cons (car l)  ; apply on the head of the 
            (filter p (cdr l)))) ;call the function filter on the tail
        (else (filter p (cdr l))) ; if not predicat then call the function filter on the tail
    )
)


(define mylist '(1 -2 3 -4 5 6 6 -9))

(filter positive? mylist)