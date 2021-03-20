(define (same-parity x . nums)
  (if (odd? x)
      (cons x (filter odd?  nums))
       (cons x  (filter even? nums))))
      