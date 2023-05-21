(define (mymap f l)
  (cond ((null? l) l)
        (else (cons (f (car l)) (mymap f (cdr l))))))

(define (square x) (* x x))

