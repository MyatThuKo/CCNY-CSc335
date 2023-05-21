;; Class - CSc 335
;; Date - Feb 7, 2023

(define x 3)

(define sq
  (lambda (x) (* x x)))

(define (g x)
  (define (f x)
    (+ x x))
  (+ x (f 3)))

(cond ((> x 4) 17)
        (else (sq x)))

(define a 10)
(define b 11)
(let ((a 1)
      (b (+ a 2)))
  (+ a b))