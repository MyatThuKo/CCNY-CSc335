;; CSc 335
;; Feb 2, 2023 (Thursday)
;; Functions

(define x 3)

(define square
  (lambda (x) (* x x)))

(define add-x
  (lambda (y)
    (+ x y)))

((lambda (x)
   (* ((lambda (x) (+ x 1)) 4) x)) 5)

(define y 17)

(let ((y 2))
  (+ y 3))

;; let is nothing more than syntactic sugar for
((lambda (z) (+ z 3))
 2)