(define (div-interval x y)
  (cond ((or (= (upper-bound y) 0) (or (= (lower-bound x)) 0))
         (error "interval span zero"))
  (else (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                              (/ 1.0 (lower-bound y)))))))