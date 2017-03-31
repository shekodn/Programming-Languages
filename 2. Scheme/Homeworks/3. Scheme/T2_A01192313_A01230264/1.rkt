#lang racket
;repetidos
;done
(define (repetidos-aux list)
  (cond ((null? list) #f)
        ((member (car list) (cdr list)) #t)
        (else (repetidos-aux (cdr list)))))

(define (repetidos? a b c d e)

  (repetidos-aux (list a b c d e))
)

(repetidos? 1 2 3 4 5) ;=> #f
(repetidos? 1 -2 1 -2 1) ;=> #t


(define (acumulador x)
    (if (zero? x) 1 0)
)

;sin listas
(define (repetidos2-aux a b c d e)
    (- 5(+ (+ (acumulador(- b a)) (acumulador (- c a)) (acumulador (- d a)) (acumulador (- e a))))
    (+ (if ( = a b) 0 (+ (acumulador(- c b)) (acumulador(- d b)) (acumulador(- e b)))))
    (+ (if (or ( = c b)(= c a)) 0 (+(acumulador(- d c)) (acumulador(- e c)))))
    (+ (if (or (or ( = d b)(= d a))(= d c)) 0 (acumulador(- e d)))))
)

(define (repetidos2? a b c d e)
    (if (=  (repetidos2-aux a b c d e) 5) #f #t)
)

(repetidos2? 1 2 3 4 5) ;=> #f
(repetidos2? 1 -2 1 -2 1) ;=> #t
