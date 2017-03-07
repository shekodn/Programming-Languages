#lang racket
(define (m2last n)
   (cond ((= n 1) 1)
         ((= n 2) 2)
         (else (* (m2last (- n 1)) (m2last (- n 2)))
               ))
  )
