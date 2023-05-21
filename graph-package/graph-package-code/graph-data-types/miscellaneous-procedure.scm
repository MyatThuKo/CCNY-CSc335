(define (update-visited element lst)
  (cons (list element) lst))

(define (my-reverse lst)
  (reverse lst))

(define (member? element lst)
  (member element lst))

(define (list-to-queue lst)
  (if (null? lst)
      make-empty-queue
      (enqueue-queue (car lst) (list-to-queue (cdr lst)))))

(define (list-to-stack lst)
  (if (null? lst)
      make-empty-stack
      (push-stack (car lst) (list-to-stack (cdr lst)))))

(define (my-append x y)
  (append x y))

(define (my-cons x y)
  (cons x y))