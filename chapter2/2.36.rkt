; 
; Welcome to Racket v7.9 [bc].
; 
> 
accumulate.rkt> (accumulate + 0 (list 1 2 3 4))
10
accumulate.rkt> (foldr + 0 (list 1 2 3 4))
10
accumulate.rkt> (foldr + 0 (list 1 2 (list 3 5) 4))
; +: contract violation
;   expected: number?
;   given: '(3 5)
;   argument position: 1st
;   other arguments...:
;    4
accumulate.rkt> (foldr append '() (list (list 1 2) (list 3 4)))
'(1 2 3 4)
accumulate.rkt> (foldr append '() (list (list 1 2) (list 3 4 (list 8 9))))
'(1 2 3 4 (8 9))
accumulate.rkt> flatten
#<procedure:flatten>
accumulate.rkt> (flatten (list (list 1 2) (list 3 4)))
'(1 2 3 4)
accumulate.rkt> nil
; nil: undefined;
;  cannot reference an identifier before its definition
;   in module: "c:\Users\justincj\Desktop\code\sicp\accumulate.rkt"
accumulate.rkt> null
'()
accumulate.rkt> 
; c:\Users\justincj\Desktop\code\sicp\accumulate-n.rkt:6:32: seq: unbound identifier
;   in: seq

> 
accumulate-n.rkt> (accumulate-n + 0 '((1 2 3) (3 5 6) (8 9 5)))
; car: contract violation
;   expected: pair?
;   given: '()
accumulate-n.rkt> 
accumulate-n.rkt> (accumulate-n + 0 '((1 2 3) (3 5 6) (8 9 5)))
; ...accumulate-n.rkt:7:35: arity mismatch;
;  the expected number of arguments does not match the given number
;   expected: 1
;   given: 0
accumulate-n.rkt> 
accumulate-n.rkt> (accumulate-n + 0 '((1 2 3) (3 5 6) (8 9 5)))
; car: contract violation
;   expected: pair?
;   given: '()
accumulate-n.rkt> trace
; trace: undefined;
;  cannot reference an identifier before its definition
;   in module: "c:\Users\justincj\Desktop\code\sicp\accumulate-n.rkt"
accumulate-n.rkt> 
accumulate-n.rkt> (accumulate-n + 0 '((1 2 3) (3 5 6) (8 9 5)))
; car: contract violation
;   expected: pair?
;   given: '()
accumulate-n.rkt> trace
; trace: undefined;
;  cannot reference an identifier before its definition
;   in module: "c:\Users\justincj\Desktop\code\sicp\accumulate-n.rkt"
accumulate-n.rkt> 
accumulate-n.rkt> (car '())
; car: contract violation
;   expected: pair?
;   given: '()
accumulate-n.rkt> (accumulate-n + 0 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
; car: contract violation
;   expected: pair?
;   given: '()
accumulate-n.rkt> 
accumulate-n.rkt> (accumulate-n + 0 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
'(22 26 30)
accumulate-n.rkt> 