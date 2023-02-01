;; precondition: inputs an integer n >= 0
;; postcondition: returns n!

(define (factorial n)
  (if (= 0 n)
       1
       (* n (factorial (- n 1)))))
