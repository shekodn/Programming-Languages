#lang racket

(define (aplica-n func n)
  (if (= n 1)
      func
      (lambda (x) (func ((aplica-n func (- n 1)) x)))))


(define inc7 (aplica-n (lambda (x) (+ x 1)) 7))
(inc7 5) ;=> 12
(define eleva8a (aplica-n (lambda (x) (* x x)) 3))
(eleva8a 4) ;=> 64
(define quita4 (aplica-n cdr 4))
(quita4 '(1 2 3 4 5)) ;=> (5)
