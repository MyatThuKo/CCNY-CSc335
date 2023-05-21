(define (myappend l m)
  (if (null? l)
      m
      (cons (car l) (myappend (cdr l) m)))
  )

(myappend '(1 2) '(3 4 5))
(myappend '(1 (2)) '((3 4) 5))