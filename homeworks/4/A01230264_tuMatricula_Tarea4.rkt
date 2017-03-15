#lang racket

(define AB '(8 (5 (2 () ())
                  (7 () ()))
               (9 ()
                  (15 (11 () ())
                      () ))))


(define ABB '(8 (5 (2 () ())
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


 ;1.Implementar la función inserta-abb en Scheme que dados un árbol binario de
 ;búsqueda (valores en subárbol izquierdo < raíz < valores en subárbol derecho)
 ;y un valor como argumentos, inserte el valor en su lugar correspondiente
 ;dentro del árbol, si este no existe. Probar con:

 ;1

 (define (inserta-abb A x)
   (cond ((empty? A) (list x '() '()) )
         ((< x (car A)) (append (cons(car A) (list (inserta-abb (cadr A) x))) (cddr A)))
         ((> x (car A)) (append (cons(car A) (list (cadr A))) (list (inserta-abb (caddr A) x))))
         (else A)
    )
 )

 ;(inserta-abb AB 11)

 ;2. Implementar la función busca-nivel en Scheme que dados un árbol binario de
 ;búsqueda y un valor como argumentos, busque el valor y regrese el nivel de
 ;profundidad en el que lo encontró. La raíz del árbol completo está a nivel 0.
 ;Regresar -1 en caso de no encontrar el valor dentro del árbol.

 (define (aux-busca-nivel n A nivel)
   (cond ((> n (car A)) (aux-busca-nivel n (caddr A) (+ nivel 1)));binary search to find level
         ((< n (car A)) (aux-busca-nivel n (cadr A) (+ nivel 1)));binary search to find level
         (else nivel)
    )
   )


 (define (busca-nivel ABB dato) ;aux functions to have the required function format
   (aux-busca-nivel dato ABB 0)
 )



 (busca-nivel AB  11) ;=>  3
 (busca-nivel AB 5) ; =>  1


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


 ;4.Implementar la función elimina-abb en Scheme que dados un árbol binario de
 ;búsqueda y un valor como argumentos, busque y elimine el valor especificado,
 ;si este existe. Asumir que los valores de los nodos no se repiten.

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


 ;5.Implementar la función recorreXnivel en Scheme que dado un árbol binario
 ;(donde el valor de los nodos no importe) regrese una lista con el recorrido
 ;del árbol nivel x nivel. Asumir que los valores de los nodos no se repiten.
 ;TIP: podrían auxiliarse de una función que regrese los nodos
 ;sucesores de un nodo especificado.

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


;6.Implementar la función n-destinos en Scheme que liste los nodos origen que
;tienen N nodos destino. No se permite usar la función primitiva length.












;7.Implementar la función cantidad-arcos en Scheme que cuente la cantidad de
;arcos en un grafo en los que participe un nodo dado. No se permite usar la
;función primitiva length.
(define (cantidad-arcos g n)
  (apply + (map (lambda(x) (cond ((eqv? n (car x)) (apply + (map (lambda(y) 1)  (cdr x))))
                           (else (apply + (map (lambda(z) (if (eqv? n (car z)) 1 0))(cdr x)))))) g)
   )
)


(cantidad-arcos g 'A)
(cantidad-arcos g 'C)
(cantidad-arcos g 'F)


;8.Implementar la función lista-arcos en Scheme que recibe un grafo como
;entrada y regresa una lista de arcos como salida. Cada arco debe seguir el
;formato (nodo_origen nodo_destino peso_arco).

(map first g)
(map cdr g) ;returns final node and weigth


(define (insert-first element list)
  (map (lambda (x)
         (cons element x))
       (cdr list)))

(insert-first 'x (map cdr g))
