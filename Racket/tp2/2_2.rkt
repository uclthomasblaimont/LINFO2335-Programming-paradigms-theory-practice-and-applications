#lang racket

;; Version no tail-recursive
(define (minus-pi-over-4 i k)
  (if (> i k)
      0
      (+ (/ (expt -1 i) (+ (* 2 i) 1))
         (minus-pi-over-4 (+ i 1) k))))

;; Version tail-recursive
(define (minus-pi-over-4-tail a b)
  (define (iter i acc)
    (if (> i b)
        acc
        (iter (+ i 1)
              (+ acc (/ (if (even? i) 1.0 -1.0)
                        (+ (* 2 i) 1.0))))))
  (iter a 0)) ; we are not outside of the main function 

(time (minus-pi-over-4 0 999))
(time (minus-pi-over-4-tail 0 999))

(time (minus-pi-over-4 0 20000))
(time (minus-pi-over-4-tail 0 20000))


; the function  no tail recursive have to wait the result and finally make the "+" operator
;  with the function tail recursive computes directly , gives the result to acc , finishes properly.
; we dont have backtracking 