#lang sicp

(#%require rackunit)

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

; (test 0 (p)

; In normal order procedure will return 0,
; because interpretator doesn't evaluate operators and operands untill they are needed
; thus y will not be evaluated only x because it needs for evaluation in if condition

; In applicative order evaluation will result in infinite recursion,
; because at first interpretator evaluates operators and operands
; that is at first it evaluates x then y but y is procedure that points to itself
; and it will be infinite recursion