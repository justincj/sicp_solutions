
;; product
(define (product a term b next)
  (if (> a b)
      1
      (* (term a) (product (next a) term b next))))






;; factorial
(define (factorial n)
  (product 1 identity n inc))

(define (inc x) (+ x 1))

(define (identity x)
  x)

;; approximating pi
(define (pi limit)
  (* 4.0 (product 2 piterm limit pi-next)))


(define (piterm a)
  (/ (* a (+ a 2)) (square (+ a 1))))

(define (pi-next a)
  (+ a 2))

(define (square x) (* x x))