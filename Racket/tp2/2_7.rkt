#lang racket

(define mylist '(1 2 -3 4 5 -6 7 8 -9))

(define (range a b)
  (if (> a b)
      '()
      (cons a (range (+ a 1) b))))

(define (max-list lists)
  (map (lambda (l) (apply max l)) lists)) ; apply max functions on each list[i]

(map (lambda (x) (+ x 1)) mylist)

(range 1 5)

(define list-of-lists
  '((1 2 3 1)
    (45 1 3 4 5)
    (4 5 64)
    (4 6)
    (144)
    (0 4 4)
    (14 464 4 7 6)))

(max-list list-of-lists)