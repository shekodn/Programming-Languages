#lang racket

(define todos
    (lambda (l n m)
      (cond ((> (length l) 1) (cons ((eval (car l)) n m) (aplica (cdr l) n m)))
            (else (cons ((eval (car l)) n m) '()))
      )
     )
)


(todos < '(9 8 7) '(6 7 8))  ;=> #t
(todos (lambda (x y) (negative? (- x y)) '(1 2 3) '(4 5 6))  	;=> #t
(todos > '(9 8 7) '(6 7 8))  ;=> #f
