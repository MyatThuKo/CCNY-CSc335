## Class: CSc 335

## Date: Mar 30, 2023 (Thursday)

```scheme
(define (compose f g)
  (lambda (x) (f (g x))))

(define (compose f g)
  (define (h x)
    (f (g x)))
  h)
```

Another example:

Write a function `make-expt` of one argument `b` which returns a function of one argument `x` so that

```scheme
(define (make-expt-v0 b)
  (lambda (x) (expt b x)))

((make-expt-v0 2) 5) = 32
```

Given

```scheme
(define l1 (list 1 2 3))
(define l2 (list 1 2 3))
```

What is (cons l1 l2)?
