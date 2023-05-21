## Class: CSc 335

## Date: May 2, 2023 (Tuesday)

**_Map_**

- The predicate needs to be compatable with the data that we have

```scheme
(define (mymap f l)
  (cond ((null? l) l)
        (else (cons (f (car l)) (mymap f (cdr l))))))

(define (square x) (* x x))

(mymap square '(1 2 3 4)) ; (1 4 9 16)
```

_Another example_

```scheme
(mymap (lambda (x) (cons 'a x)) '((b c) (d e)))
                        =
((a b c) (a d e))
```

**_Accumulate_**

_NOTE: This is important for the final exam_

```scheme
(define (accumulate op init seq)
  (cond ((null? seq) init)
        (else (op (car seq) (accumulate op init (cdr seq))))))

;; accumulate is also known as (foldr), fold-right

(accumulate + 0 '(1 2 3 4))
```

where

- $op$ must be binary function
- init &rarr; initial value - returned $seq$ is $'()$
- seq &rarr; a list

```scheme
(+ 1 (accumulate + 0 '(2 3 4))) ==
(+ 1 (+ 2 (accumulate + 0 '(3 4)))) ==
(+ 1 (+ 2 (+ 3 (accumulate + 0 '(4))))) ==
(+ 1 (+ 2 (+ 3 (+ 4 (accumulate + 0 '()))))) ==
(+ 1 (+ 2 (+ 3 (+ 4 0))))

;; Answer is 10.
```

To better understand accumulate, let's focus on $op$ [which is the source of the function's power]

1. Can we implement map using accumulate?
   - What about leveraging the fact that op is ANY binary function?

```scheme
(accumulate (lambda (x y) ()) init seq)
```

Try to rewrite (accumulate + 0 seq) using a lambda form for +:

```scheme
(accumulate (lambda x y)(+ x y) 0 seq)
```

where

- x expects (car seq)
- y expects accumulated result on (cdr seq)

Via the design role, $op$ should be

```scheme
(lambda (x y)
  (cons ((f x) y)))
```

where

- $f$ applied to $(car \ seq)$
- $map$ of $f$ over $(cdr \ seq)$

---

Note:

- Map cannot be used to implement accumulate - but still map is a really useful. Consider the problem of computing all **subsets of a finite set $S$**.

Example:

$P(\{1, 2, 3\})$ can be computed as the union of $P(\{2, 3\})$ with the set of subsets obtained by inserting 1 into each element of $P(\{2, 3\})$

$P(\{1, 2, 3\}) = \{\{2, 3\}, \{2\}, \{3\}, \{\}\} \cup \{\{1, 2, 3\}, \{1, 2\}, \{1, 3\}, \{1\}\}$

Sets can be represented as lists without repetition
