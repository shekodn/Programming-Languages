;maps agarra sus listas y aplica el operador a cada elemento de las listas

(map sqrt '(1 2 3 4))

(map + '(1 2 3 4))

(map + '(1 2 3 4) '(5 6 7 8) '(9 10 11 12))

(apply + '(1 2 3 4))

;Primer elemento de cada columna de una matriz
(map car matrix)

;sumar un renglon de una matriz
(apply + (car matriz))

;obtiene la primer columna de una matriz
(define 1col
    (lambda (matriz)
    (if (null? matriz)
    '()
    (cons (caar matriz) (1col (cdr matriz))))))

; obtiene la columna n
(define ncol
    (lambda (matriz col)
    (map (lambda (r) (lista-ref r col)) matriz)))

;obtener nombre de empleados
(map cadr lista_de_empleados) ;concepto

;suma de elementos de una matriz
(define sumatoria (lambda (matriz) (apply + (apply append matriz))))
;(apply + (map (lambda (r) (apply + r)) matriz))
