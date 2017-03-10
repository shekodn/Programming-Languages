#TC2006 – Lenguajes de Programación   
###Programación Básica en Haskell

1.Programar en Haskell la función menor que obtiene, sin usar listas, el menor de sus 4 argumentos.
Probar con:
```
menor 1 2 3 4		=> 1
menor 0 -3 1 4		=> -3
menor 9 3 2 7		=> 2
```

2.Programar en Haskell la función secuencia que regrese una lista con la secuencia de números naturales del 0 al N.
Probar con:
```
secuencia 0 		=> [0]
secuencia 2		=> [0,1,2]
secuencia 5 		=> [0,1,2,3,4,5]
```

3.Programar en Haskell la función negativos que obtiene la sublista de números negativos de una lista de números enteros.
Probar con:
```
negativos [1,2,3] 		=> []
negativos [2,-1,3,-4,5]	=> [-1,-4]
negativos [-1,-2,-2] 		=> [-1,-2,-2]
```

4.Programar en Haskell la función sumapares que suma los números pares de una lista menores que un valor de umbral.
Probar con:
```
sumapares [1,2,3,4,5] 0	=> 0
sumapares [3,2,6,5] 10	=> 8
sumapares [2,4,6,8,10] 5	=> 6
```
