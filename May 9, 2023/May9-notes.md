## Class - CSc 335

## Date - May 9, 2023 (Tuesday)

**_Project Submission_**

The whole thing should be named `lastname1_lastname2_term-project`

- name it as graph-package (code)
  - main folder => you will submit `graph-package.zip`
  - inside the graph-package
    - another folder called - basic-data-types (folder will contain things like stack.scm, queue.scm, set.scm, table.scm, graph.scm,...)
  - graph-algorithms (folder)
    - any algo such as bsf, dsf
  - graph-computations
    - example code to run
- graph-package-docs (in scheme format only)
  - basic-data-type.docs
  - graph-algorithms.docs

**How to use $load()$**

```scheme
;; in graph-calculations
(load "../basic-data-types.scm")

;; in basic-data-types.scm
(load "stack.scm") ;; assuming it's in the same folder
(load "queue.scm")
(load "set.scm")
```

---

### Final Exam

- always include _tree_ so always important to look at

```scheme
(define (atom? x)
  (not (pair? x)))

(define (accumulate op initial lst)
  (if (null? lst)
      initial
      (op (car lst) (accumulate op initial (cdr lst)))))

(define (depth tree)
  (cond ((null? tree) 0)
        ((atom? tree) 0)
        (else (max (+ 1 (depth (car tree)))
                   (depth (cdr tree))))))

(define (count-leaves tree)
  (cond ((null? tree) 0)
        ((atom? tree) 1)
        (else (+ (count-leaves (car tree))
                 (count-leaves (cdr tree))))))

(define (fringe tree)
  (cond ((null? tree) '())
        ((atom? tree) (list tree))
        (else (append (fringe (car tree))
                      (fringe (cdr tree))))))

(define (count-nodes-1 tree)
  (cond ((null? tree) 0)
        ((atom? tree) 1)
        (else (+ 1 (count-nodes-1 (car tree)) (count-nodes-1 (cdr tree))))))

(define (count-nodes-2 tree)
  (cond ((null? tree) 0)
        ((atom? tree) 1)
        (else (+ 1 (count-nodes-2 (car tree)) (count-nodes-2 (car (cdr tree)))))))

(define (count-nodes-3 tree)
  (cond ((null? tree) 0)
        ((atom? tree) 1)
        (else (+ 1 (accumulate + 0 (map count-nodes-3 tree))))))

(define tree '(1 (2 3) 4 (5 (6))))
(display (depth tree))
(newline)
(display (count-leaves tree))
(newline)
(fringe tree)
(count-nodes-1 tree)
(count-nodes-2 tree)
(count-nodes-3 tree)
```
