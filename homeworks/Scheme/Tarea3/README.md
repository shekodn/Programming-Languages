#TC2006 Lenguajes de Programación
###Tarea 3: Programación Básica en Scheme Fecha de entrega: martes 21 de febrero de 2017

1. Implementar el predicado repetidos? que reciba cinco argumentos enteros y que determine si alguno de ellos se repite.
Probar con:

```
> (repetidos? 1 2 3 4 5)   => #f
> (repetidos? 1 -2 1 -2 1) => #t
```

2. Implementar la función distintos que reciba 5 argumentos enteros y determine cuantos valores distintos se dieron.
Probar con:

```
> (distintos 1 2 3 4 5)
> (distintos -1 1 -1 1 -1)
> (distintos 4 4 4 4 4)
```

3. En matemáticas el valor de pi se puede calcular a partir de la fórmula de la sumatoria infinita de Euler

Implementar la función recursiva pi que regrese el valor de pi calculado mediante los t primeros términos de la serie que la define (mientras más términos más se acercará al valor exacto).
Probar con:

```
> (pi 1) => 2.0
> (pi 3) => 2+14/15  =  44/15  (aprox 2.9333333333333333)
> (pi 5) => 3+31/315 = 976/315 (aprox 3.0984126984126985)
```

4. Implementar la versión terminal de una función recursiva m2last que regresa el n-ésimo elemento de la serie cuyos primeros 2 elementos son los números 1 y 2, y a partir del tercero se calcula como la multiplicación de los 2 elementos anteriores. Los primero elementos de la serie son: 1, 2, 2, 4, 8, 32, 256, 8192,...
Probar con:

```
> (m2last 1) => 1
> (m2last 5) => 8
> (m2last 9) => 2097152
```

5. Para cada uno de los siguientes incisos obtén las dos representaciones faltantes de las tres vistas en clase: representación visual, representación interna, y representación con el constructor cons (no se permiten otros constructores como list o append).

a.((1 2 . 3) 4 . 5)
b. (cons (cons (cons ‘a ‘b)(cons ‘c ‘())) (cons ‘d ‘()))


6. Implementar la función recursiva num->list que convierta su argumento dado como un número entero no negativo en una lista de dígitos.
Probar con:

```
> (num->list 235)
> (num->list 0)
> (num->list 4321)
```

7. Implementar la función recursiva repetidos que determine la cantidad de elementos repetidos en 2 listas. Suponer que no hay elementos repetidos en cada lista.
                           Probar con:
```
> (repetidos ‘(0 1 2 3) ‘(4 5 6 7))
> (repetidos ‘(a b c d) ‘(a b c d))
> (repetidos ‘(a 1 b 2) ‘(1 c 3 a))

=> 0 => 4 => 2
=> (2 3 5)
=> (0)
=> (4 3 2 1)
```

8. Implementar la función recursiva mezcla que cree una lista ordenada de enteros sin repetición a partir de dos listas ordenadas de enteros que pueden tener valores repetidos.
Probar con:

```
> (mezcla ‘() ‘(1 1 1))         => (1)
> (mezcla ‘(1 1 2) ‘(-3 1 3 3)) => (-3 1 2 3)
> (mezcla ‘(1 2 3) ‘(4 5 6))    => (1 2 3 4 5 6)
```


9. Implementar la función recursiva potencia que regrese el conjunto
potencia de un conjunto dado como argumento.
Probar con:

```
> (potencia ‘())      => (())
> (potencia ‘(1 2))   => (()(1)(2)(1 2))
> (potencia ‘(a b c)) => (()(a)(b)(c)(a b)(a c)(b c)(a b c))
```

10. Implementar la función recursiva comprime que tome una lista arbitrariamente imbricada que contiene sublistas y dígitos, y que en su lugar regrese una lista con la misma estructura pero con números que representen la concatenación de dígitos consecutivos.
Probar con:

```
> (comprime ‘())                                    => ()
> (comprime ‘(1 (2 0) (3 5 4)))                     => (1 (20) (354))
> (comprime ‘(1 (2 (3 4 (5 1) 6 7 8) 9 0)))         => (1 (2 (34 (51) 678) 90))
```
