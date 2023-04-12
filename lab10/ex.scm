(define (fib n)
    (if (<= n 1) n (list '+ (fib(- n 1)) (fib(- n 2)))))