#lang racket

(define (acumulador x)
    (if (zero? x) 1 0)
)

(define (distintos a b c d e)
    (- 5(+ (+ (acumulador(- b a)) (acumulador (- c a)) (acumulador (- d a)) (acumulador (- e a))))
    (+ (if ( = a b) 0 (+ (acumulador(- c b)) (acumulador(- d b)) (acumulador(- e b)))))
    (+ (if (or ( = c b)(= c a)) 0 (+(acumulador(- d c)) (acumulador(- e c)))))
    (+ (if (or (or ( = d b)(= d a))(= d c)) 0 (acumulador(- e d)))))
)

(distintos 1 2 3 4 5)
(distintos -1 1 -1 1 -1)
(distintos 4 4 4 4 4)
