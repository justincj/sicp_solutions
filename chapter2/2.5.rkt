;(1 2)
;(a b)
;Show that we can represent pairs of nonneg- ative integers using only numbers and arithmetic operations if we represent the pair a and b as the integer that is
; the product 2a3b. Give the corresponding definitions of the procedures cons, car, and cdr.

(define (cons a b)
    (* (exp 2 a) (exp 3 b)))

(define (car num)
  (factor num 2 0))

(define (cad num)
  (factor num 3 0))


(define (factor num x counter)
  (if (not (eq? (remainder num x) 0))
      counter
      (factor (/ num x) x (+ counter 1))))
      