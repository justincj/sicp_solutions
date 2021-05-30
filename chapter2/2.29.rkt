(define (make-mobile right left)
  (list right left))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))


(define a (make-mobile (make-branch 1 2) (make-branch 3 4)))
(define b (make-mobile (make-branch 1 2) (make-branch 9 (make-mobile (make-branch 3 5) (make-branch 3 8)))))

(define (total-weight mobile)
  (cond
    ((null? mobile) 0)
    ((pair? mobile)
     (+ (branch-weight (left-branch mobile))
        (branch-weight (right-branch mobile))))))

(define (branch-weight branch)
  (if (pair? (branch-structure branch))
      (total-weight (branch-structure branch))
      (branch-structure branch)))


(define (balanced? mobile)
  (= (* (branch-length (left-branch mobile)) (branch-weight (left-branch mobile)))
     (* (branch-length (right-branch mobile)) (branch-weight (right-branch mobile))))) 
  



