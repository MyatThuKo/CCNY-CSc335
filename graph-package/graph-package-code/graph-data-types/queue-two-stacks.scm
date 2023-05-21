;; The dequeue is not working as expected. 

(load "StackRepsInOneFunction.scm")

(define (queue-reps m)

  (define (list-rep)

    ;; creating a queue with two stacks
    (define (make-queue)
      (cons make-empty-stack make-empty-stack))

    ;; adding an item to the queue
    (define (enqueue x q)
      (cons (push-stack x (car q))
            (cdr q)))

    ;; removes and returns the oldest item
    ;; from the queue
    (define (dequeue q)
      (if (((stack-reps 'list) 'empty?) (cdr q))
          (if (((stack-reps 'list) 'empty?) (car q))
              '()
              (let ((reversed-enqueue-stack (reverse (car q))))
                (cons ((stack-reps 'list) 'make-empty)
                      (((stack-reps 'list) 'pop) reversed-enqueue-stack))))
          (cons (car q)
                (((stack-reps 'list) 'pop) (cdr q)))))

    ;; m is one of 'make-queue, 'enqueue, or 'dequeue
    (define (dispatch m)
      (cond ((eq? m 'make-queue) make-queue)
            ((eq? m 'enqueue) enqueue)
            ((eq? m 'dequeue) dequeue)))

    dispatch)

  (cond ((eq? m 'list) (list-rep))))


(define make-queue ((queue-reps 'list) 'make-queue))
(define enqueue-queue ((queue-reps 'list) 'enqueue))
(define dequeue-queue ((queue-reps 'list) 'dequeue))

(define queue-0 (make-queue))
(define queue-1 (enqueue-queue 'a queue-0))
(define queue-2 (enqueue-queue 'b queue-1))
(define queue-3 (enqueue-queue 'c queue-2))
(define queue-4 (enqueue-queue 'd queue-3))
(dequeue-queue queue-4)