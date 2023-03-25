;; Class: CSc 335
;; Date: Mar 23, 2023


(define (deriv f)
  (let ((dx 0.0000000001))
    (lambda (x) (/ (- (f (+ x dx))
                      (f x))
                   dx))))

(define (cube x) (* x x x))

;; ((deriv cube) 5)

((deriv (lambda (x) (* x x x))) 5)

(define (s-exp? l)
  (cond ((null? l) #t)
        ((eq? l 'a) #t)
        ((eq? l 'b) #t)
        (()) ;; some recursive processing of list...
        (else #f)))

;; we have to worry that about how #f could be returned

(define (atom? x)
  (and (not (null? x))
       (not (pair? x))))