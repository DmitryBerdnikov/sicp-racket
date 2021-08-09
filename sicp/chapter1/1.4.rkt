#lang sicp

(#%require rackunit)

; if b less than 0 it is (- a b)
; for example (a-plus-abs-b 2 6) will be (+ 2 6) = 2 + 6 = 8
; for example (a-plus-abs-b 2 -6) will be (- 2 -6) = 2 - (-6) = 8
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(check-equal? (a-plus-abs-b 2 6) 8)
(check-equal? (a-plus-abs-b 2 -6) 8)