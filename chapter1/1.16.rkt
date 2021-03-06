(define (fast-exp base pow)
  (exp-iter base pow 1)
  )

(define (exp-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (exp-iter (square b) (/ n 2) a))
        ((odd? n) (exp-iter b (- n 1) (* a b)))
        ))

(define (expt b n)
  (if (= n 0) 1
      (* b (expt b (- n 1)))))

(define (square x)
  (* x x))