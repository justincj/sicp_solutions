(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define x-point car)
(define y-point cdr)
(define (make-point x y)
  (cons x y))

(define (midpoint seg)
  (make-point
   (/  (+ (x-point (start-segment seg))
           (x-point (end-segment seg))) 2.0)
   (/ (+ (y-point (start-segment seg))
           (y-point (end-segment seg))) 2.0)))


(define (make-segment x y)
  (cons x y)
  )

(define start-segment car) 
(define end-segment cdr)

(define (print-segment seg)
  (newline)
  (display "(")
  (display (start-segment seg))
  (display ",")
  (display (end-segment seg))
  (display ")"))


