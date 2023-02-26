;; Class - CSc 335
;; Date - Feb 23, 2023
;; Recursive solution for sum-of-digits

(define (digit-sum n)
  (cond ((< n 10) n)
        (else (+ (digit-sum (quotient n 10)) (modulo n 10)))))

(define (add a b)
  (cond ((zero? a) b)
        (else (add (- a 1) (+ b 1)))))