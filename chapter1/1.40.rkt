(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define dx 0.0001)
(define (deriv f)
  (lambda (x) (/ (- (f (+ x dx)) (f x)) dx)))

(define tolerance 0.001)
(define (fixed-point f firstguess)
  (define (iter f guess)
    (let ((next (f guess)))
    (if (close-enough? guess next)
        guess
        (iter f next))))
  (iter f firstguess))


(define (close-enough? guess next)
  (< (abs (- guess next)) 0.001))

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x)) -2))

(define (square x) (* x x))

(define (polynomial-root a b c)
  (newtons-method (cubic a b c) 1))

(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)))

(define (cube x) (* x x x))


