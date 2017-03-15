;5.Implementar la función recorreXnivel en Scheme que dado un árbol binario
;(donde el valor de los nodos no importe) regrese una lista con el recorrido
;del árbol nivel x nivel. Asumir que los valores de los nodos no se repiten.
;TIP: podrían auxiliarse de una función que regrese los nodos
;sucesores de un nodo especificado.

#lang racket


;Función que recorre el arbol nivel por nivel
(define (recorreXnivel A)
  (cond ((empty? A) '()); checa si la lista es vacía
  (else (recorreAux A (list (car A)) (list (car A)))); si no es vacía llama a una funcion auxiliar mandando el arbol y dos listas con el primer nodo
  )
 )

; funcion auxiliar que encuentra todos los hijos de un nodo buscando hacia el lado izquierdo
(define (encuentra-hijosI n A)
  (if (empty? A) '()
  (cond
        ((not (eqv? n (car A))) (encuentra-hijosI n (cadr A))); si elnnodo no es igual al que se busca se vuelve a llamar
        ((and (empty? (caddr A)) (empty? (cadr A))) '()); si si es igual y sus nodos hijos están vacíos regresa una lista vacía
        ((empty? (caddr A)) (list (caadr A))); si su nodo hijo derecho está vacío regresa una lista con el nodo hijo izquierdo
        ((empty? (cadr A)) (list (caaddr A))); si su nodo hijo izquierdo está vacío regresa una lista con el nodo hijo derecho
        (else (list (caadr A) (caaddr A)));si los dos nodos hijos tienen valor, regres una lista con nlos dos nodos hijo
   ) )
  )

; funcion auxiliar que encuentra todos los hijos de un nodo buscando hacia el lado derecho
(define (encuentra-hijosD n A)
  (if (empty? A) '()
  (cond ((not (eqv? n (car A))) (encuentra-hijosD n (caddr A))); si elnnodo no es igual al que se busca se vuelve a llamar
        ((and (empty? (caddr A)) (empty? (cadr A))) '()); si si es igual y sus nodos hijos están vacíos regresa una lista vacía
        ((empty? (caddr A)) (list (caadr A))); si su nodo hijo derecho está vacío regresa una lista con el nodo hijo izquierdo
        ((empty? (cadr A)) (list (caaddr A))); si su nodo hijo izquierdo está vacío regresa una lista con el nodo hijo derecho
        (else (list (caadr A) (caaddr A)));si los dos nodos hijos tienen valor, regres una lista con nlos dos nodos hijo
   ) )
  )

;funcion auxiliar del recorrido nivel por nivel, los parametros de la función son el arbol original, una cola con los nodos que se busca
; y la lista final con el recorrido nivel por nivel
(define (recorreAux A c LF)
  (cond ((empty? c) LF);si la cola ya está vacía se retorna la lista final
        (else (recorreAux A (remove-duplicates (append (cdr c) (append (encuentra-hijosI (car c) A) (encuentra-hijosD (car c) A)))) (remove-duplicates (append LF (append (encuentra-hijosI (car c) A) (encuentra-hijosD (car c) A))))))
   ) ;si no lo está se llama de nuevo la función haciendo un append del resto de la cola los hijos del car de la cola
  ); lo mismo para llenar la cola y la lista final, solo que como a la cola se hace un append con el cdr entonces se va eliminando el primer elemento
