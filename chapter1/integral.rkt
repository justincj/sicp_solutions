#lang racket

(define (cube x)
  (* x x x))

(define (sum a term  b next)
  (if (> a b)
      0
      (+ (term a) (sum (next a) term b next))))

(define (sum-cube a b)
  (sum a cube b (lambda (x) (+ x 1))))

(define (integral fn a b dx)
  (* dx (sum  (+ a (/ dx 2.0)) fn b (lambda (x) (+ x dx)) )))

