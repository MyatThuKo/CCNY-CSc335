;; Class: CSc 335
;; Date: Mar 21, 2023 (Tuesday)

(define addX
  (lambda (x)
    (lambda (y) (+ x y))))

(define (add4 y)
  ((addX 4) y))

(cond ((= 2 3) 5)
      (else (+ 4 5)
            (+ 20 3)))