#lang racket

(define aplica
    (lambda (l n m)
      (cond ((> (length l) 1) (cons ((eval (car l)) n m) (aplica (cdr l) n m)))
            (else (cons ((eval (car l)) n m) '()))
      )
     )
)

;poner directo abajo, desde aqui marca un error
;(aplica '(+ - * /) 4 2)
;(aplica '(cons list append) '(a b) '(c))
