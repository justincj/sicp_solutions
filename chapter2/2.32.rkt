(define (subsets items)
  (if (null? items)
      (list '())
      (let ((rest (subsets (cdr items))))
        (append rest (map (lambda (x) (cons (car items) x)) rest)))))




