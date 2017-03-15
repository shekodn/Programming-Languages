;1.Implementar la función inserta-abb en Scheme que dados un árbol binario de
;búsqueda (valores en subárbol izquierdo < raíz < valores en subárbol derecho)
;y un valor como argumentos, inserte el valor en su lugar correspondiente
;dentro del árbol, si este no existe. Probar con:
#lang racket


(define AB '(8 (5 (2 () ())
                  (7 () ()))
               (9 ()
                  (15 (11 () ())
                      () ))))

(define g
'((A (B 2) (D
10))
(B (C 9) (E 5))
(C (A 12) (D 6))
(D (E 7))
(E (C 3))
 ))

;1

(define (inserta-abb A x)
  (cond ((empty? A) (list x '() '()) )
        ((< x (car A)) (append (cons(car A) (list (inserta-abb (cadr A) x))) (cddr A)))
        ((> x (car A)) (append (cons(car A) (list (cadr A))) (list (inserta-abb (caddr A) x))))
        (else A)
   )
)

;(inserta-abb AB 11)
