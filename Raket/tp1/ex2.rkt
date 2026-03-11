#lang racket

(define a -8)


(define b
  (if (> a 0)
      (* 2 (sqrt a))
      (/ (* 7 (sqrt (- a))) (- a))
  )
)

(display b)