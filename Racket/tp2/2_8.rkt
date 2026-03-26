#lang racket

(define (accumulate init f l)
  (if (null? l)
      init
      (f (car l)
         (accumulate init f (cdr l)))))


(accumulate 1 * '(2 3 4))
(accumulate 2 + '(2 3 4))
(accumulate 3 / '(2 3 4))