(define (fixed-point f guess)
  
    (define (try guess)
      (let ((next (f guess)))
      (if (close-enough? guess next)
          guess
          (try next))
      ))
    (try guess))

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) 0.0001))

(define (golden-ratio x)
  (fixed-point (lambda (x) (+ 1 (/ 1 x))) 25.0))

