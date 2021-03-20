(define (for-each f lst)
  (if (null? lst)
      (newline)
      (iter f lst)))


(define (iter f lst)
  (display (f (car lst)))
  (newline)
  (for-each f (cdr lst)))
      