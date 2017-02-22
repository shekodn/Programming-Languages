#lang racket

(define  (num->list n)
  (Aux-num->list n 10 '())
  )

(define  (Aux-num->list n m l)
  (cond ((= (quotient n m) 0)  (cons (remainder n m) l ) )
        (else (Aux-num->list (quotient n m) m (cons (remainder n m) l ) ))
        )
  )
