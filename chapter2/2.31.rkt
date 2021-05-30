(define (tree-map fn tree)
  (cond
    ((pair? tree)
     (map (lambda (children) (tree-map fn children)) tree))
    (else (fn tree))))

(define (square x) (*  x x))

(define (square-tree tree)
  (tree-map square tree))