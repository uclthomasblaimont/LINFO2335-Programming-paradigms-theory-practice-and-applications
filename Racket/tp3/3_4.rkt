#lang racket


(let ((a 5))  ; define a in the first scope
    (let  ; define lambda function in second scope 
        (
            (fun (lambda (x) 
            (max a x)) ; memorize the env so  sigma(a=5,x=value from f)
            )
    ) ; takes the max between a and x but a comes from the first scope
    ; if we remove the following the let the result won't change
    (let ((a 0) (x 1)) ; doesn't affect the closure


    (fun 0) ; value of x
    )
))