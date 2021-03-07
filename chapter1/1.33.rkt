(define (filtered-accumulate combiner null-value term a next b predicate)
  (cond ((> a b) null-value)
        ((predicate a) (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b predicate)))
        (else (filtered-accumulate combiner null-value term (next a) next b predicate))))
      
  