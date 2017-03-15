;7.Implementar la función cantidad-arcos en Scheme que cuente la cantidad de
;arcos en un grafo en los que participe un nodo dado. No se permite usar la
;función primitiva length.
#lang racket


(define g
'((A (B 2) (D
10))
(B (C 9) (E 5))
(C (A 12) (D 6))
(D (E 7))
(E (C 3))
 ))


(define (cantidad-arcos g n)
  (apply + (map (lambda(x) (cond ((eqv? n (car x)) (apply + (map (lambda(y) 1)  (cdr x))))
                           (else (apply + (map (lambda(z) (if (eqv? n (car z)) 1 0))(cdr x)))))) g)
   )
)


(cantidad-arcos g 'A)
(cantidad-arcos g 'C)
(cantidad-arcos g 'F)
