;; define a procedure that takes three number as arguments and returns the sum of squares of the two larger number

(define (square x) (* x x))

(define (sos x y) (+ (square x) (square y)))


(define (sosl a b c)
  (cond ((and (>= a c) (>= b c)) (sos a b))
        ((and (>= a b) (>= c b)) (sos a c))
        (else (sos b c))))