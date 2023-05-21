;; Class - CSc 335
;; Date - April 20, 2023


(define (subst* blue green tree)
  (cond ((null? tree) tree)
        ((pair? tree)
         (cons (subst* blue green (car tree))
               (subst* blue green (cdr tree))))
        ((eq? tree blue) green)
        (else tree)))

(subst* 'blue 'green '(a b (c blue d) e (f blue blue g)))

(define (atom? x)
  (not (pair? x)))

(define (subst* s blue green)
  (cond ((null? s) s)
        ((atom? s) (if (eq? s blue)
                       green
                       s))
        (else (cons (subst* (car s) blue green) (subst* (cdr s) blue green)))))

(subst* '(a b (c blue blue green d) e (f blue blue g)) 'blue 'green)

;; constructors
(define (make-@ e1 e2)
  (list e1 '@ e2))

(define (make-# e1 e2)
  (list e1 '# e2))

(define (make-! e1 e2)
  (list e1 '! e2))

;; selectors
(define (first-operand e)
  (car e))