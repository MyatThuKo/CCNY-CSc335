## Class - CSc 335

## Date - April 20, 2023

**_Tree_**

- If we have to go two steps in depth, we have to pass two paran.

The datatype pairs is completely specified by 3 equations.

```scheme
(car (cons x y)) = x
(cdr (cons x y)) = y
(cons (car (cons x y) (cdr (cons x y)))) = (cons x y)
```

We are justified in using tree pictures when we design programs to process arbitrary s-expressioins.

Given this - we'd like to exploit the correspondence to come up with an induction strategy for programs which process s-expressions. We cn do this by considering the **structure** of trees.

![Tree image](images/tree-expression.jpeg)

- We can use $car$ and $cdr$ as the components of a tree.

---

### _Tree Recursion_

**_Write R5RS scheme program subst\* which replaces each occurence of an atom blue by an atom green in the input tree._**

- Structure induction on s

```scheme
(define (subst* s blue green)
  (cond ((null? s) s)
        ((atom? s) (if (eq? s blue)
                       green
                       s))
        (else (cons (subst* (car s) blue green) (subst* (cdr s) blue green)))))
```
