;; Class - CSc 335
;; Date - April 18, 2023

(define (atom? x)
  (not (pair? x)))

(define (lat? sexp)
  (cond ((null? sexp) #t)
        ((atom? sexp) #f)
        (else (and (atom? (car sexp))
                   (lat? (cdr sexp))))
        ))

(define (member? a lat)
  (cond ((null? lat) #f)
        ((eq? a (car lat)) #t)
        (else (member? a (cdr lat)))))

(define (remove a l)
  (cond ((null? l) l)
        ((eq? a (car l)) (cdr l))
        (else (cons (car l)
                    (remove a (cdr l))))
        ))