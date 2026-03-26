#lang racket

(define (cube x)
  (* x x x))

(define (mean-cube a b)
  (/ (+ (cube a) (cube b)) 2))

(mean-cube 16 4)