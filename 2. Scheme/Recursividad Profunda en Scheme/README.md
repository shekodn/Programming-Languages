#TC2006 – Lenguajes de Programación  
###Recursividad Profunda en Scheme

1. Programar la función recursiva profundidad en Scheme que determine y regrese el nivel máximo de anidación dentro de una lista posiblemente imbricada.

###Sample Input
```
(profundidad ‘(a b c))		
(profundidad ‘(a (b) c))
(profundidad ‘(0 (1 (2) 1) 0))

```

###Sample Output
```
0
1
2
```

2. Programar la función recursiva anida en Scheme que construya una lista que describa un patrón decremental de anidamiento.

###Sample Input
```
(anida 0)
(anida 1) 	
(anida 3) 	
```

###Sample Output
```
(0)
(1 (0))
(3 (2 (1 (0))))
```

3. Programar la función recursiva elimina en Scheme que reduzca una lista posiblemente imbricada eliminando todos los elementos que coincidan con un dato especificado.

###Sample Input
```
(elimina 1 ‘(a b c))
(elimina ‘b ‘(a (b) c))
(elimina 1 ‘(0 (1 (2) 1) 0))
```

###Sample Output
```
(a b c)
(a () c)
(0 ((2)) 0)
```
