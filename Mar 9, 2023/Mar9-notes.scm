;; Class: CSc 335
;; Date: Mar 9, 2023

;; pascal triangle
(define (pas r c)
  (cond ((zero? c) 1)
        ((= r c) 1)
        (else (+ (pas (- r 1) (- c 1))
                 (pas (- r 1) c)))
        ))

;; Higher-Order Procedures 
(define (sigma-v0 a b)
  (cond ((> a b) 0)
        (else (+ a (sigma-v0 (+ a 1) b)))
        ))

(define (sigma-v1 a term b)
  (cond ((> a b) 0)
        (else (+ (term a) (sigma-v1 (+ a 1) term b)))
        ))

(define (sigma-v2 a term next b)
  (cond ((> a b) 0)
        (else (+ (term a) (sigma-v2 (next a) term next b)))
        ))

(define (sigma-v3 a term next combiner init b)
  (cond ((> a b) init)
        (else (combiner (term a) (sigma-v3 (next a) term next combiner init b)))
        ))
