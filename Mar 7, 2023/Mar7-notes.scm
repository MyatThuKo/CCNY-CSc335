;; Class: CSc 335
;; Date: Mar 7, 2023

;; Fib-sequence

(define (fib n)
  (cond ((zero? n) 0)
        ((one? n) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))


(define (fib n)
  ;; some call to iter
  )

(define (iter count curr prev) ;; dr: curr is the count  fib # ;; dr: curr is the count - 1 fib #
  (cond ((= count 0) 0)
        ((= count 1) 1)
        ((= count n) curr)
        (else (iter (+ count 1) (+ (curr prev)) (curr)))))