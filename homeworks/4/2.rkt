;2. Implementar la función busca-nivel en Scheme que dados un árbol binario de
;búsqueda y un valor como argumentos, busque el valor y regrese el nivel de
;profundidad en el que lo encontró. La raíz del árbol completo está a nivel 0.
;Regresar -1 en caso de no encontrar el valor dentro del árbol.

#lang racket

(define ABB
      '(8  (5  (2  ()  ())
              (7  ()  ()))
          (9  ()
              (15 (11  ()  ())
                  () ))))



;(define (busca-nivel tree)
;(let depths ((tree tree)
;             (depth 0)
;             (results '()))
;  (cond
;    ((null? tree) results)
;    ((pair? tree) (depths (car tree)
;                          (+ 1 depth)
;                          (depths)))
;    (else depth))))

;(define (busca-nivel lst)
;  (let depth ((lst lst) (n 1))
;    (cond ((null? lst) '())
;          ((not (pair? (car lst)))
;           (cons n
;                 (cons (car lst)
;                       (depth (cdr lst) n))))
;          (else
;           (append (depth (car lst) (+ 1 n))
;                   (depth (cdr lst) n))))))
;
;
;
;(busca-nivel ABB)

;(define-struct BT (left right))
;
;(define t
;  (make-BT empty (make-BT empty empty))
;  (make-BT empty empty)
;  )
;
;

;(busca-nivel AB 11) =>  3
;(busca-nivel AB 5)  =>  1
;(busca-nivel AB 4)  => -1
