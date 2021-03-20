(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x))))) 

;; (add-1 zero)
;; (lambda (f) (lambda (x) (f ((lambda (f) (lambda (x) x)) f) x)))))
;; (lambda (f) (lambda (x) (f x)))

;; (add-1 one)
;; (lambda (f) (lambda (x) (f ((lambda (f) (lambda (x) (f x))) f) x)))))
;; (lambda (f) (lambda (x) (f (f x))))

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

#|
thinking (add-1 n) as (add-1 one/m n)
(lambda (f) (lambda (x) (__ ((n f) x))))
(lambda (f) (lambda (x) ((m f) ((n f) x)))))
|#

(define (add m n)
  (lambda (f)
    (lambda (x)
      ((m f)
       ((n f) x)))))

;; verification
#|
(define (add two two)
  (lambda (f)
    (lambda x)
    (((lambda (f) (lambda (x) (f (f x)))) f)
     (((lambda (f) (lambda (x) (f (f x)))) f) x))))

(lambda (f)
  (lambda (x)
     ((lambda (x) (f (f x)))
    (f (f x)))))

(lambda (f)
  (lambda (x)
    (f (f (f (f x))))))
;; which should be four
|#


  