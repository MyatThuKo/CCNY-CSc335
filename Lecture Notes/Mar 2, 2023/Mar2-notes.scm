;; Class; CSc 335
;; Date: Mar 2, 2023
;; AM Quiz without multiplicity restriction

(define (contains? m n)
  (let ((m0 (modulo m 10))
        (n0 (modulo n 10)))
    (cond ((= m0 n0)
           (if (< m 10)
               #t
               (contains? (quotient m 10) n)))
          (else (contains? m (quotient n 10))))))


;; PM Quiz
;; Solutin 2 first, as it appears to be simpler.

(defne (remove-leftmost n d)
  (cond ((= d (modulo n 10))
         (if (not (occurs? (quotient n 10) d))
             (quotient n 10)
             (+ (modulo n 10)
                (* 10 (remove-leftmost (quotient n 10) d)))))
        (else (+ (modulo n 10)
                 (* 10 (remove-leftmost (quotient n 10) d))))))
                 