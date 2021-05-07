(define (substitute lst old new)
  (cond
    ((null? lst) '())
    ((pair? (car lst))
      (cons (substitute (car lst) old new) (substitute (cdr lst) old new)))
    ((eq? (car lst) old)
     (cons new (substitute (cdr lst) old new)))
    (else
     (cons (car lst) (substitute (cdr lst) old new)))))

(define one '((silent guitar) (rock guitar) guitar))