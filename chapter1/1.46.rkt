(define (iterative-improve f g)
  (define (iter guess)
    (if (f guess)
        guess
        (iter (g guess))))
  (lambda (guess) (iter guess)))

(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  ((iterative-improve good-enough? improve) 1.0 ))

(define (average x y)
(/ (+ x y) 2))

(define square (lambda (x) (* x x)))

(define tolerance 0.0001)
(define (fixed-point f firstguess)
  (define (close-enough? guess)
    (< (abs (- guess (f guess))) tolerance))
  (define (next guess)
    (f guess))
  ((iterative-improve close-enough? next) 1.0)
  )