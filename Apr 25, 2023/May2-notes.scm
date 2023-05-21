;; Class: CSc 335
;; Date: May 2, 2023 (Tuesday)

(define (mymap f l)
  (cond ((null? l) l)
        (else (cons (f (car l)) (mymap f (cdr l))))))

(define (square x) (* x x))

(mymap square '(1 2 3 4))

(define (accumulate op init seq)
  (cond ((null? seq) init)
        (else (op (car seq) (accumulate op init (cdr seq))))))

;; accumulate is also known as (foldr), fold-right

(accumulate + 0 '(1 2 3 4))

(+ 1 (accumulate + 0 '(2 3 4)))
(+ 1 (+ 2 (accumulate + 0 '(3 4))))
(+ 1 (+ 2 (+ 3 (accumulate + 0 '(4)))))
(+ 1 (+ 2 (+ 3 (+ 4 (accumulate + 0 '())))))
(+ 1 (+ 2 (+ 3 (+ 4 0))))

(accumulate cons '(5) '(1 2 3 4))

;; Creating map using accumulate

(define (mymap$ f seq)
  (accumulate (lambda (x y) (cons (f x) y)) '() seq))

(mymap$ square '(1 2 3))

(define (powerSet s)
  (cond ((null? s)) ;representation of set-containing-empty-set
        (else (union (powerSet (cdr s))
                     (map (lambda (x) (cons (car s) (powerSet (cdr s)))))))))