#lang racket

;Ejercicio 1

(define flatten
  (lambda (e)
    (cond ((pair? e) `(,@(flatten (car e)) ,@(flatten (cdr e))))
          ((null? e) '())
          (else (list e)))))

(define (filtra cond? list)
  (remove '(())  (map (lambda (x) (cond [(cond? x ) x] [else null])) (flatten list))))

(filtra negative? '((1 -2 3 4)(-5 6 -7 -8)))        ;=> ((-2)(-5 -7 -8)) ;ejemplo profe
(filtra (lambda (x) (> x 5)) '((4 9)(1 2)(10 7)))   ;=> ((9)()(10 7)) ;ejemplo profe.
