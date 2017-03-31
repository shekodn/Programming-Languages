#TC2006 – Lenguajes de Programación   
###Primitivos de Orden Superior en Scheme (FOS)


1.	Programar la FOS filtra en Scheme que sin utilizar recursividad explícita elimine  de una matriz de números todos los elementos que NO cumplan una condición unaria que se le pase como argumento. No utilizar el primitivo filter.
Probar con:

```
(filtra negative? ‘((1 -2 3 4)(-5 6 -7 -8)))      => ((-2)(-5 -7 -8))
(filtra (lambda (x) (> x 5)) ‘((4 9)(1 2)(10 7))) => ((9)()(10 7))
```

2.	Programar la FOS impares en Scheme que sin utilizar recursividad explícita extraiga todos los números impares dentro de una matriz.
Probar con:

```
(impares ‘((1 2 3)(4 5 6)))		=> (1 3 5)
(impares ‘((2 4)(2 1)(3 2)))	=> (1 3)
```

3.	Programar la FOS inserta en Scheme que sin utilizar recursividad explícita que inserte un valor después de cada elemento de una lista.
Probar con:

```
(inserta 1 ‘(1 2 3 4))		=> (1 1 2 1 3 1 4 1)
(inserta ‘a ‘(b (c) (d e)))	=> (b a (c) a (d e) a)
```
