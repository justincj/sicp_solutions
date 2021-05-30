(define (square x)
  (* x x))

(define (square-tree tree)
  (cond 
        ((pair? tree)
         (map (lambda (children) (square-tree children)) tree))
        (else ((lambda (x) (* x x)) tree))))
        
(define (square-tree2 tree)
  (cond ((null? tree) '())
        ((pair? tree)
         (cons (square-tree2 (car tree))
               (square-tree2 (cdr tree))))
        (else ((lambda (x) (* x x)) tree))))
