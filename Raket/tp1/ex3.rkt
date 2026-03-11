#lang racket

(displayln (cons 1 (cons 2 (cons 3 (cons 4 '())))))

(displayln (car (cons 1 (cons 2 '()))))

(displayln (car (cdr (list 1 2 3 4))))

(displayln (cadr '(1 2 3)))

(displayln (caddr '(1 2 3)))

(displayln (cdddr '(1 2 3)))

(displayln (list (list 1 2 3) 4 5 6))

(displayln (cons 'a 'b))


(displayln (list (list 1 2 3) 4 5 6))
(displayln (cons 'a 'b))
(displayln (list? '(a . b)))
(displayln(cons (cons 'a 'b) (cons 1 '() )))
(list? (cons (cons 'a 'b) (cons 1 '() )))
(cadar '((1 4 8 7) (1 3 4 2 5) (0 32 (54 4 46))))
(caddr '((1 4 8 7) (1 3 4 2 5) (0 32 (54 4 46))))
(caaddr '((1 4 8 7) (1 3 4 2 5) (0 32 (54 4 46))))

