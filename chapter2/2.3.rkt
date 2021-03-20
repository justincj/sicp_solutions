(load "2.2.rkt")


(define bottom car)
(define top cdr)

(define (make-rectangle a b c d)
  (cons (make-segment a b)
        (make-segment c d)))

(define (width rect)
  (distance (bottom rect)))

(define (height rect)
  (distance (make-segment (start-segment (top rect))
                     (end-segment (bottom rect)))))


(define (distance seg)
  (let ((x1 (x-point (start-segment seg)))
        (x2 (x-point (end-segment seg)))
        (y1 (y-point (start-segment seg)))
        (y2 (y-point (end-segment seg))))
    (sqrt (+ (square (- x2 x1))  (square (- y1  y2))))))

(define (square x) (* x x))

(define (perimeter rect)
  (* 2 (+ (height rect) (width rect))))

(define (area rect)
  (* 2 (+ (height rect) (width rect))))