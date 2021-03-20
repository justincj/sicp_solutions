(define (make-rat x y)
  (cond ((and (negative? y) (not (negative? x)))
        (cons (/ (- x) (gcd x y)) (/ (abs y) (gcd x y))))
        ((and (negative? x) (negative? y))
         (cons (/ (abs x)(gcd x y)) (/ (abs y) (gcd x y))))
        (else
         (cons (/ x (gcd x y)) (/ y (gcd x y))))))