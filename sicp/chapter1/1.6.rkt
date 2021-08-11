#lang sicp

(#%require rackunit)

; todo 1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(check-equal? (new-if (> 6 5) 10 20) 20)