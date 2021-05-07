(define (calc)
  (display "calc " )
  (display (calc-eval (read)))
  (newline)
  (calc))


(define (calc-eval exp)
  (cond
    ((number? exp) exp)
  ((list? exp)
  (calc-apply  (eval (car exp)) (map calc-eval (cdr exp))))
  (else (error "calc: bad expression:" exp))))


(define (calc-apply fn args)
  (apply fn args))