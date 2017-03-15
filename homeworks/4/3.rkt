;3.Implementar la función posicion-recorrida en Scheme que dados un árbol
;binario, un orden de recorrido y un valor como argumentos, busque el valor en
;el árbol de acuerdo al orden de recorrido establecido y regrese la posición en
;que se encontró empezando en el primer elemento. Regresar 0 en caso de no
;encontrarlo.

#lang racket

;3
;función que hace el recorrido que se le pida (inorden, postorden, o preorden)
;y retorna la posición en la que está un valor dado segun ese recorrido
(define (posicion-recorrida AB s x)
  (cond ((eqv? s 'prefix) (encuentra (preorden AB) x (length (preorden AB)))); manda a llmar el recorrido preorden (función aux), y la func aux encuentra
        ((eqv? s 'infix) (encuentra (inorden AB) x (length (inorden AB)))); manda a llmar el recorrido inorden (función aux), y la func aux encuentra
        ((eqv? s 'postfix) (encuentra (postorden AB) x (length (postorden AB)))); manda a llmar el recorrido postorden (función aux), y la func aux encuentra
   )
  )

;función aux que hace el recorrido preorden
(define (preorden A)
  (cond ((empty? A) '()); si la lista está vacía regresa ()
        (else (append (cons (car A) (preorden (cadr A)) ) (preorden (caddr A))))
   ); si no está hace un append  de una celda cons (con el nodo padre y el recorrido preorden de sus subarbol izq) con el recorrido preorden de su subarbol der
  )
; (preorden AB)
;8 5 2 7 9 15 11

;función aux que hace el recorrido inorden
(define (inorden A)
  (cond ((empty? A) '()); si la lista está vacía regresa ()
        (else (flatten (append (cons (inorden (cadr A)) (cons (car A) '())) (inorden (caddr A)))))
 ); si no está hace un append  de una celda cons (con el recorrido inorden de su subarbol izq y el nodo padre) con el recorrido inorden de su subarbol der
)
; (inorden AB)
;2 5 7 8 9 11 15

;función aux que hace el recorrido postorden
(define (postorden A)
  (cond ((empty? A) '()); si la lista está vacía regresa ()
        (else (flatten (append (cons (postorden (cadr A)) (postorden (caddr A)) ) (cons (car A) '()))))
 );si no está hace un append de una celda cons (con el recorrido postorden de su subarbol izq y el recorrido postorden de su subarbol der) con el nodo padre
)

; (postorden AB)
;2 7 5 11 15 9 8

;Función que encuentra un valor dado en una lista
;los parametros son la lista, x el valor a buscar y n el tamaño de la lista
(define (encuentra l x n)
  (cond ((empty? l) (* -1 n)); si la lista está vacía se regresa -1 multiplicado por n, para que al sumarse con el máximo del tamaño de la lista de 0
        ((= (car l) x) 1); si encontró el numero regresa 1
        (else (+ 1 (encuentra (cdr l) x n))); sino es igual suma 1 porque avanzó una posición más
   );se manda a llamar encuentra con el resto de la lista y el mismo numero a buscar y el mismo tamaño
  )
