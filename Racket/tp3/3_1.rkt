#lang racket

; comes from the previous tp : 2_8 


(define (accumulate init f l)
  (if (null? l)
      init
      (f (car l)
         (accumulate init f (cdr l)))))


; dot operator : create function , list , or other structure .

; (define (f a b . rest)  rest) ==> (f 1 2 3 4 5) ===> '(3 4 5)'
; '(1 . 2) ==> (cons 1 2)
; '(1 2 . 3) ==> (cons 1 (cons 2 3))
(define (my-plus . mylist)
  (apply + mylist))


(my-plus 1 2 3 4)


