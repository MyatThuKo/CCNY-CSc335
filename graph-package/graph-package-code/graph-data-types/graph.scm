(load "../graph-data-types/set.scm")

(define (graph-reps m)

  (define (list-rep)

    ;; Creating an empty graph 
    (define make-empty
      '())

    ;; g is non-empty graph 
    (define (insert-vertex v g)
      (if (vertex-of? v g)
          g
          (cons (cons v (cons make-empty-set '())) g)))

    ;; g is non-empty graph 
    (define (vertex-of? v g)
      (cond ((null? g) #f)
            ((eq? v (caar g)) (car g))
            (else (vertex-of? v (cdr g)))))
    
    ;; g is non-empty graph 
    (define (vertices g)
      (cond ((null? g) g)
            (else (cons (caar g) (vertices (cdr g))))))
    
    ;; g is non-empty graph 
    (define (neighbors v g)
      (cond ((null? g) g)
            ((eq? (caar g) v) (cadar g))
            (else (neighbors v (cdr g)))))
    
    ;; g is non-empty graph
    (define (insert-edge v1 v2 g)
      (add-neighbor v1 v2 g))

    ;; checking if element 'e' is inside the lst
    (define (member? e lst)
      (if (member e lst)
          #t
          #f))

    ;; g is non-empty graph
    ;; inserting e into the neighbor list of v
    (define (add-neighbor v e g)
      (let ((vertex (car g)))
        (if (and (equal? (car vertex) v) (not (member? e (cadr vertex))))
            (cons (list (car vertex) (cons e (cadr vertex))) (cdr g))
            (cons vertex (add-neighbor v e (cdr g))))))
  
    ;; m is one of the 'make-empty, 'insert-vertex, 'insert-edge, 'vertices, or 'edges
    (define (dispatch m)
      (cond ((eq? m 'make-empty) make-empty)
            ((eq? m 'insert-vertex) insert-vertex)
            ((eq? m 'vertices) vertices)
            ((eq? m 'insert-edge) insert-edge)
            ((eq? m 'neighbors) neighbors)))

    dispatch)

  (cond ((eq? m 'list) (list-rep))))

(define make-empty-graph ((graph-reps 'list) 'make-empty))
(define insert-vertex-graph ((graph-reps 'list) 'insert-vertex))
(define insert-edge-graph ((graph-reps 'list) 'insert-edge))
(define vertices-graph ((graph-reps 'list) 'vertices))
(define neighbors-graph ((graph-reps 'list) 'neighbors))
