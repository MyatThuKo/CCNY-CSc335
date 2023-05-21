(define (queue-reps m)

  (define (list-rep)

    ;; assigning an empty list
    (define make-empty
      '())

    ;; q is an non-empty queue
    (define (enqueue x q)
      (append q (list x)))

    ;; q is an non-empty queue
    (define (dequeue q)
      (cond ((empty? q) '())
            (else (cdr q))))

    ;; q is an non-empty queue
    (define (first q)
      (car q))

    ;; q is an non-empty queue
    (define (empty? q)
      (null? q))


    ;; m is one of the 'make-empty, 'enqueue, 'dequeue, or 'empty?
    (define (dispatch m)
      (cond ((eq? m 'make-empty) make-empty)
            ((eq? m 'enqueue) enqueue)
            ((eq? m 'dequeue) dequeue)
            ((eq? m 'first) first)
            ((eq? m 'empty?) empty?)))

    dispatch)

  (cond ((eq? m 'list) (list-rep))))

(define make-empty-queue ((queue-reps 'list) 'make-empty))
(define enqueue-queue ((queue-reps 'list) 'enqueue))
(define dequeue-queue ((queue-reps 'list) 'dequeue))
(define first-queue ((queue-reps 'list) 'first))
(define empty-queue? ((queue-reps 'list) 'empty?))