## Class - CSc 335

## Date - May 11, 2023 (Thursday)

You have to put a set of vertix and edges to the graph, you cannoot input a list

Have a Readme.md file to indicate that which file should be run for the entire package

Time slot to meet - 15 mins

For each datatype,

- sets - how you get $n$ elements for the sets
  - without duplicates or with duplicate
- queue can be represented as stacks

Suppose sets are represented as lists without duplicates

```scheme
(define (set-union set1 set2)
  (cond ((null? set1) set2)
        ((element-of? (car set1) set2) (set-union (cdr set1) set2))
        (else (cons (car set1) (set-union (cdr set1) set2)))))
```

- Think about this alternative design which avoids the expensive passing of $set2$ as parameter for each recursive call.

```scheme
;; internal define
(define (set-union set1 set2)
  (define (aux  set1)
    (cond ((null? set1) set2)
          ((element-of? (car set1) set2)
           (aux (cdr set1)))
          (else (cons (car set1)
                      (aux (cdr set1))))))
    (aux set1))

;; using letrec
(define (set-union set1 set2)
  (letrec ((aux (lambda (x)
                  (cond ((null? set1) set2)
                        ((element-of? (car x) set2) (aux (cdr set1)))
                        (else (cons (car set1) (aux (cdr set1)))))))))
  (aux set1))
```

- $letrec$ is not the same as $let*$

```scheme
(let* ((x 1)
       (y (+ x 1))))

(let ((x 1))
  (let ((y (+ x y)))))
```

- the new fringe thing
- heavily on the homework 6

You take a tree and process the tree by replacing the fringe

- the new fringe needs to have the same length
- gotta work recurisvely
