# Programación en Haskell

### PROBLEMAS: Programación básica y recursiva SIN LISTAS (20 puntos)
1. Implementar la función cercanos que obtenga los dos valores más cercanos entre 5 valores enteros distintos dados como argumentos. En caso de empate regresar cualquiera de los pares más cercanos.
Probar con:
```
> cercanos 8 1 5 4
> cercanos 4 9 1 2
> cercanos 9 2 6 8
=> (5,4)
=> (1,2)
=> (9,8)
```

2. Implementar la función recursiva cuadrada que reciba los enteros positivos N y M, para después desplegar una matriz cuadrada NxN con el valor M. (Averiguar cómo desplegar en la terminal desde Haskell).
Probar con:

```
>cuadrada21 => 11 11
>cuadrada53 => 33333 33333 33333 33333 33333
PROBLEMAS: Programación recursiva con Listas (30 puntos)
```

3. Implementar la función recursiva cruza que reciba dos listas de N números y un entero U en el rango de [1,N-1] para luego regresar una lista con dos sublistas, donde la primera sublista tiene los primeros U elementos de la primera lista y los últimos N-U elementos de la segunda, mientras que la segunda sublista tiene los primeros U elementos de la segunda lista y los últimos N-U elementos de la primera.
Probar con:
```
> cruza 3 [1..5] [6..10] => [[1,2,3,9,10],[6,7,8,4,5]] > cruza 4 “candados” “perfecto” => [“candecto”,”perfados”]
```

4. Implementar la función recursiva aleatorio que reciba que genere un patrón aleatorio de N valores seleccionados aleatoriamente de una lista de valores con una probabilidad uniforme (cada valor de la lista debe de tener la misma probabilidad de ser escogido). Probar con:
```
> aleatorio 5 [0,1] => [0,1,1,1,0]
> aleatorio 6 “abcd” => “bccdad”
> aleatorio 7 [0..9] => [8,4,7,2,4,5,9]
```

5. Implementar la función recursiva moda que reciba una lista de enteros positivos y regrese una lista con sus modas estadísticas. La moda estadística es el dato más repetido.
Probar con:

```
> moda [1,2,2,3,3,3,4,4,4,4] => [4] > moda [1,2,1,2,3,3,2,1,1,3,2,4] => [1,2] > moda “Buenos días a todos” => “os ”
PROBLEMA: Estructuras de Datos (20 puntos)
Un Árbol Binario (AB) puede ser representado en Haskell, por medio de la siguiente declaración:
     data AB t = A (AB t) t (AB t) | V deriving Show
Un árbol binario de búsqueda (ABB) es un AB donde todos los valores en sus subárboles izquierdos son menores que sus raíces respectivas y todos los valores de sus subárboles derechos son mayores o iguales a sus raíces respectivas. Por ejemplo, el siguiente es un ABB:
```


6. Implementar la función recursiva creabb que dada una lista de números regrese un árbol binario de búsqueda creado con los números de la lista insertados en el orden en el que aparecen.
Probar con:

```
> creabb [1,2,3,4,5] => A V 1 (A V 2 (A V 3 (A V 4 (A V 5 V)))) > creabb [3,2,1,5,4] => A (A (A V 1 V) 2 V) 3 (A (A V 4 V) 5 V) > creabb [8,9,5,7,15,11,2]
=> A (A (A V 2 V) 5 (A V 7 V)) 8 (A V 9 (A (A V 11 V) 15 V))
```

7. Implementar la función recursiva hijos que dado un AB regrese una lista de tuplas, donde cada tupla contenga la información de un nodo especificando si se encuentra a la izquierda o derecha de su padre, su valor y el valor de su padre. Para esto, debe recorrer el AB en pre-orden (raíz -> subárbol izquierdo -> subárbol derecho). La raíz

ab = A (A (A V 2 V)
           5
(A V 7 V)) 8
(A V 9
(A (A V 11 V) 15
V))

del AB se maneja de forma especial repitiendo su valor como el valor de su padre. Probar con:

```
> hijos (A (A V “hola” V) “como” (A V “estas” V))
=> [(‘R’,“como”,“como”),(‘I’,“hola”,“como”),(‘D’,“estas”,“como”)]

> hijos ab
=> [(‘R’,8,8),(‘I’,5,8),(‘I’,2,5),(‘D’,7,5),(‘D’,9,8),(‘D’,15,9),(‘I’,11,15)]
PROBLEMAS: Funciones de Orden Superior y otras facilidades (30 puntos)
```

8. Implementar la función recursiva intersectan en Haskell que utilizando “guardias” implemente un predicado que verifique si dos listas planas pasadas como sus argumentos tienen elementos en común.
Probar con:
```
> intersectan [1,2,3] [4,5,1] => True > intersectan “abc” “def” => False
```

9. Implementar la función NO-RECURSIVA pares en Haskell que, mediante “comprensión de listas”, obtenga una lista de pares con los resultados de aplicar dos funciones a dos listas. Eliminar (sin usar la función filter) los pares donde el primer elemento sea mayor o igual que el primero.
Probar con:
```
> pares [4,5] (* 4) [1,5] (^ 2) => [(16,25),(20,25)]
> pares [4,7] (* 2) [2,4,6] (* 3) => [(8,12),(8,18),(14,18)]
```

10. Implementar la función NO-RECURSIVA fpmap en Haskell que, mediante funciones de orden superior, concatene el resultado de filtrar con un predicado los resultados de aplicar una función a los elementos de las sublistas de una lista.
Probar con:
```
> fpmap
> fpmap
> fpmap
(< 10) (* 2) [[4]] => [8]
(< 10) (* 2) [[3,2,8],[1,5]] => [6,4,2] (< 10) (* 2) [[],[1],[2,3],[4,5,6]] => [2,4,6,8]
```
