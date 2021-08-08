#lang sicp

(#%require rackunit)

(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (sum-of-squares-of-two-largest-out-of-three x y z) (
  cond ((and (<= x y) (<= x z) (sum-of-squares y z)))
       ((and (<= y z) (<= y x) (sum-of-squares x z)))
       (else (sum-of-squares x y))
))

(check-equal? (sum-of-squares-of-two-largest-out-of-three 1 2 3) 13)
(check-equal? (sum-of-squares-of-two-largest-out-of-three 4 3 2) 25)
(check-equal? (sum-of-squares-of-two-largest-out-of-three 5 3 4) 41)
(check-equal? (sum-of-squares-of-two-largest-out-of-three 3 4 4) 32)
(check-equal? (sum-of-squares-of-two-largest-out-of-three 4 3 4) 32)
(check-equal? (sum-of-squares-of-two-largest-out-of-three 4 4 3) 32)
(check-equal? (sum-of-squares-of-two-largest-out-of-three 3 3 3) 18)
