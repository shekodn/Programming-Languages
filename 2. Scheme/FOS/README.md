#TC2006 – Lenguajes de Programación   
###Funciones de Orden Superior en Scheme

1.Programar la función recursiva aplica en Scheme que aplique una lista de funciones binarias a un par de argumentos.
Probar con:
```
(aplica '(+ - * /) 4 2)                	  => (6 2 8 2)
(aplica '(cons list append) '(a b) '(c))  => (((a b) c)((a b)(c))(a b c))
```

2.Programar el predicado recursivo todos en Scheme que verifique si todos los elementos correspondientes de dos listas cumplen con un predicado binario.
Probar con:

```
(todos < '(9 8 7) '(6 7 8))                                  => #t
(todos (lambda (x y) (negative? (- x y)) '(1 2 3) '(4 5 6))  => #t
(todos > '(9 8 7) '(6 7 8))                                  => #f
```

3.Programar la función recursiva aplica-n en Scheme que sirva para generar procedimientos que apliquen N veces sobre un valor, la función dada como parámetro de entrada.
Probar con:

```
(define inc7 (aplica-n (lambda (x) (+ x 1)) 7)) (inc7 5) =>12

(define eleva8a
(aplica-n (lambda (x) (* x x)) 3) (eleva8a 4) =>64

(define quita4 (aplica-n cdr 4))

(quita4 '(1 2 3 4 5)) => (5)
```
