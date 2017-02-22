#lang racket

; 2n + 1
(define (abajo n)
  (factorial(+ 1 (* 2 n)))
)

(define (factorial n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))

;n!^2
(define (arriba-aux1 n)
  (* (factorial n) (factorial n))
 )

;exponencial
(define (exponencial n)
  (expt 2 n)
)

;arriba
(define (arriba n)
  (* (arriba-aux1 n) (exponencial n))
)

(define (pi-aux n)
  (* 2 (/ (arriba n) (abajo n)))
)

;suma 1 a N
(define (suma n)

  (if (<= n 1) 1 (+ n (suma (- n 1))))

  )

(define (pi-aux2 n)
  (if (<= n 0)
      2
      (+ (pi-aux n ) (pi-aux2 (- n 1))))
)

(define (pi n)
  (pi-aux2 (- n 1))
)

(pi 1)
(pi 3)
(pi 5)
