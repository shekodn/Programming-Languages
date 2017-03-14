;2. Implementar la función busca-nivel en Scheme que dados un árbol binario de
;búsqueda y un valor como argumentos, busque el valor y regrese el nivel de
;profundidad en el que lo encontró. La raíz del árbol completo está a nivel 0.
;Regresar -1 en caso de no encontrar el valor dentro del árbol.

#lang racket

(define AB
      '(8  (5  (2  ()  ())
              (7  ()  ()))
          (9  ()
              (15 (11  ()  ())
                  () ))))



(define (aux-busca-nivel n A nivel)
  (cond ((> n (car A)) (aux-busca-nivel n (caddr A) (+ nivel 1)))
        ((< n (car A)) (aux-busca-nivel n (cadr A) (+ nivel 1)))
        (else nivel)
   )
  )

(define (busca-nivel ABB dato)
  (aux-busca-nivel dato ABB 0)
)


;(aux-busca-nivel 11 ABB 0)


(busca-nivel AB  11) ;=>  3
(busca-nivel AB 5) ; =>  1
;(busca-nivel AB 4)  => -1
