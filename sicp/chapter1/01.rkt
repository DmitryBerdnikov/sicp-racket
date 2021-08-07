#lang sicp

(#%require rackunit)

(check-equal? 10 10)

(check-equal? (+ 5 3 4) 12)

(check-equal? (- 9 1) 8)

(check-equal? (/ 6 2) 3)

(check-equal? (+ (* 2 4) (- 4 6)) 6)

(check-equal? (+ (* 2 4) (- 4 6)) 6)

(define a 3)
(check-equal? a 3)

(define b (+ a 1))
(check-equal? b 4)

(check-equal? ( + a b (* a b)) 19)

(check-equal? (= a b) false)

(define result1 (
  if (and (> b a) (< b (* a b)))
  b
  a
  )
)
(check-equal? result1 b)

(define result2
  (cond ((= a 4 ) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)
  )
)
(check-equal? result2 16)

(check-equal? (+ 2 (if (> b a) b a)) 6)

(check-equal?
(* (cond ((> a b) a)
         ((< a b) b)
        (else -1))
   (+ a 1)
)
16)