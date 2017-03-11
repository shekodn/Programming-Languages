#TC2006 Lenguajes de Programación

##Tarea 4: Programación Avanzada en Scheme
En esta tarea pondrás en práctica tus conocimientos sobre programación avanzada con estructuras de datos, funciones y primitivos de orden superior en Scheme.

###SECCIÓN 1: Estructuras de datos mediante Recursión Explícita – no FOS (60 puntos)
Un Árbol Binario (AB) puede ser representado en Scheme, por medio de una lista en el siguiente formato: (raíz subárbol-izquierdo subárbol-derecho). Por ejemplo, si se tiene definido el siguiente
AB:
Su representación en Scheme sería:

```
 8
11
(define AB
      ‘(8  (5  (2  ()  ())
              (7  ()  ()))
          (9  ()
              (15 (11  ()  ())
                  () ))))
     5
9
15
      2
7

```

1.Implementar la función inserta-abb en Scheme que dados un árbol binario de búsqueda (valores en subárbol izquierdo < raíz < valores en subárbol derecho) y un valor como argumentos, inserte el valor en su lugar correspondiente dentro del árbol, si este no existe. Probar con:
```
(inserta-abb AB 11) => (8 (5 (2 () ()) (7 () ())) (9 () (15 (11 () ()) ())))
(inserta-abb AB 4) => (8 (5 (2 () (4 () ())) (7 () ())) (9 () (15 (11 () ()) ())))
(inserta-abb () 11) => (11 () ())

```

2.Implementar la función busca-nivel en Scheme que dados un árbol binario de búsqueda y un valor como argumentos, busque el valor y regrese el nivel de profundidad en el que lo encontró. La raíz del árbol completo está a nivel 0. Regresar -1 en caso de no encontrar el valor dentro del árbol.
Probar con:
```
(busca-nivel AB 11) => 3
(busca-nivel AB 5)  => 1
(busca-nivel AB 4)  => -1
```
3.Implementar la función posicion-recorrida en Scheme que dados un árbol binario, un orden de recorrido y un valor como argumentos, busque el valor en el árbol de acuerdo al orden de recorrido establecido y regrese la posición en que se encontró empezando en el primer elemento. Regresar 0 en caso de no encontrarlo.
Probar con:
```
(posicion-recorrida AB ‘prefix 15)  => 6
(posicion-recorrida AB ‘infix 4)    => 0
(posicion-recorrida AB ‘infix 15)   => 7
(posicion-recorrida AB ‘postfix 15) => 5
```

4.Implementar la función elimina-abb en Scheme que dados un árbol binario de búsqueda y un valor como argumentos, busque y elimine el valor especificado, si este existe. Asumir que los valores de los nodos no se repiten. TIP: Pueden utilizar la estrategia de eliminación descrita en la página: http://www.algolist.net/Data_structures/Binary_search_tree/Removal.

Probar con:
```
(elimina-abb ABB 4) => (8 (5 (2 () ()) (7 () ())) (9 () (15 (11 () ()) ())))

(elimina-abb ABB 11) => (8 (5 (2 () ()) (7

(elimina-abb ABB 9) => (8 (5 (2 () ()) (7

(elimina-abb () 8) => (9 (5 (2 () ()) (7
() ())) (9 () (15 () ())))
() ())) (15 (11 () ()) ()))
() ())) (15 (11 () ()) ()))
```

5.Implementar la función recorreXnivel en Scheme que dado un árbol binario (donde el valor de los nodos no importe) regrese una lista con el recorrido del árbol nivel x nivel. Asumir que los valores de los nodos no se repiten. TIP: podrían auxiliarse de una función que regrese los nodos sucesores de un nodo especificado.
Probar con:
```
(recorreXnivel ‘()) => ()
(recorreXnivel ABB) => (8 5 9 2 7 15 11)
(recorreXnivel ‘(a (b (d () ()) ()) (c () ()))) => (a b c d)
```

###SECCIÓN 2: PROGRAMACIÓN SIN RECURSIÓN EXPLÍCITA (40 puntos)
Un grafo dirigido y ponderado puede ser representado en Scheme por medio de una lista de arcos. La lista de representación del grafo en este caso, tiene un registro por cada nodo del grafo, y este registro a su vez es una lista con el siguiente formato:
(nodox (nodo_adyacente1 peso_arco1) (nodo_adyacente2 peso_arco2) ...
(nodo_adyacenten peso_arcon))
Donde nodox es el identificador de un nodo origen en el grafo, nodo_adyacentei es el identificador de un nodo destino y peso_arcoi es la ponderación del arco que une al nodox con el nodo_adyacentei.
Bajo este formato, el siguiente grafo tendría la representación en Scheme que se muestra:
```
              (define g
              ‘((A (B 2) (D
              10))
              (B (C 9) (E 5))
              (C (A 12) (D 6))
              (D (E 7))
              (E (C 3))
))
```

#####SIN utilizar recursividad explícita ni la definición de funciones auxiliares, implementar las funciones que se describen a continuación utilizando los primitivos de orden superior map, apply y la forma especial lambda:

6.Implementar la función n-destinos en Scheme que liste los nodos origen que tienen N nodos destino. No se permite usar la función primitiva length.
Probar con:
(n-destinos g 2) => (A B C)
(n-destinos g 1) => (D E)
(n-destinos g 3) => ()

7.Implementar la función cantidad-arcos en Scheme que cuente la cantidad de arcos en un grafo en los que participe un nodo dado. No se permite usar la función primitiva length.
Probar con:
```
(cantidad-arcos g ‘A) => 3
(cantidad-arcos g ‘C) => 4
(cantidad-arcos g ‘F) => 0
```

8.Implementar la función lista-arcos en Scheme que recibe un grafo como entrada y regresa una lista de arcos como salida. Cada arco debe seguir el formato (nodo_origen nodo_destino peso_arco).
Probar con:
```
(lista-arcos g) =>((A B 2) (A D 10) (B C 9) (B E 5) (C A 12) (C D 6) (D E 7) (E C 3))
(lista-arcos ‘((S (L 1)(M 4))(L (L 2)(M 3))(M (S 5)))) =>((S L 1) (S M 4) (L L 2) (L M 3) (M S 5))
```
