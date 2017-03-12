#lang racket

;4.Implementar la función elimina-abb en Scheme que dados un árbol binario de
;búsqueda y un valor como argumentos, busque y elimine el valor especificado,
;si este existe. Asumir que los valores de los nodos no se repiten. 
(define ABB
      '(8  (5  (2  ()  ())
              (7  ()  ()))
          (9  ()
              (15 (11  ()  ())
                  () ))))

(define (elimina-abb abb nodo)
  ( cond
    ((null? abb) '())
    ((pair? (car abb)) (cons (elimina-abb (car abb) nodo) (elimina-abb (cdr abb) nodo)))
    ((equal? (car abb) nodo) (elimina-abb (cdr abb) nodo))
    (else (cons (car abb) (elimina-abb (cdr abb) nodo)))
))


(elimina-abb  ABB  '4)
(elimina-abb  ABB  '11)
(elimina-abb  ABB  '9)
(elimina-abb  ABB  '8)
