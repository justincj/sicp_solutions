(define (last-pair lst)
  (if (empty? (cdr lst))
              lst
              (last-pair (cdr lst))))