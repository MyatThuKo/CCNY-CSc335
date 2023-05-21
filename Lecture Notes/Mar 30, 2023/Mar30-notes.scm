;; Class: CSc 335
;; Date: Mar 30, 2023

(define (compose f g)
  (lambda (x) (f (g x))))

(define (compose f g)
  (define (h x)
    (f (g x)))
  h)

(define (make-expt-v0 b)
  (lambda (x) (expt b x)))

((make-expt-v0 2) 5)

(define (make-expt-v1 b)
  (define (curried-expt x)
    (expt b x))
  curried-expt)

(define compute (make-expt-v1 2))

(compute 3)



(define l1 (list 1 2 3))
(define l2 (list 1 2 3))

(cons l1 l2)
