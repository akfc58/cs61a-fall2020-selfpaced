(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
 (car (cdr (cdr s)))
)


(define (sign num)
  (cond 
    ((> num 0) 1)
    ((< num 0) -1)
    ((= num 0) 0))
)


(define (square x) (* x x))

(define (pow x y)
  (cond ((= y 0) 1)
        ((odd? y) 
          (* x (square (pow x (quotient y 2)))))
        (else
          (square (pow x (quotient y 2))))
))

