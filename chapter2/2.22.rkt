(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons ((lambda (x) (* x x)) (car things))
                    answer))))
(iter items '())
  )

