;; Set ADT

(define (set-reps m)

  (define (list-rep)

    (define make-empty
      '())

    ;; s is non-empty set
    (define (insert x s)
      (if (element-of? x s)
          s
          (cons x s)))

    ;; s is non-empty set
    ;; x: input element to check if it's existed in the set 
    (define (element-of? x s)
      (cond ((null? s) #f)
            ((eq? x (car s)) #t)
            (else (element-of? x (cdr s)))))

    ;; s is non-empty set
    (define (delete x s)
      (remove x s))

    ;; s is non-empty set
    (define (remove x lst)
      (cond ((null? lst) '())
            ((eq? x (car lst)) (remove x (cdr lst)))
            (else (cons (car lst) (remove x (cdr lst))))))

    ;; set union 
    (define (union s1 s2)
      (cond ((null? s1) s2)
            ((element-of? (car s1) s2) (union (cdr s1) s2))
            (else (cons (car s1) (union (cdr s1) s2)))))

    (define (intersection s1 s2)
      (cond ((null? s1) make-empty)
            ((element-of? (car s1) s2) (cons (car s1) (intersection (cdr s1) s2)))
            (else (intersection (cdr s1) s2))))

    ;; m is one of the 'make-empty, 'insert, 'delete, 'union, or 'intersection
    (define (dispatch m)
  (cond ((eq? m 'make-empty) make-empty)
        ((eq? m 'insert) insert)
        ((eq? m 'delete) delete)
        ((eq? m 'union) union)
        ((eq? m 'intersection) intersection)))

    dispatch)

  (cond ((eq? m 'list) (list-rep))))


(define make-empty-set ((set-reps 'list) 'make-empty))
(define insert-set ((set-reps 'list) 'insert))
(define delete-set ((set-reps 'list) 'delete))
(define union-set ((set-reps 'list) 'union))
(define intersection-set ((set-reps 'list) 'intersection))
