;Sorts

; ordena un arreglo de numero
(define(ordena arreglo)
    (if (null? arreglo)
    arreglo
    (inserta (car arreglo)
                (ordena (cdr arreglo))))
)


; inserta un elemento de un arreglo ordenado
(define(inserta elemento ordenado)
    (con ((null? ordenado) (list elemento))
    ((> elemento (car ordenado))
    (cons(car ordenado)
        (inserta elemento (cdr ordenado))))
    (else (cons elemento ordenado)))
)

;suma matriz
(define (suma-matriz m1 m2)
    (if null? m1)
        '()
        (cons (suma-renglones (car m1) (car m2))
            (suma-matriz (cdr m1) (cdr m2)))
)

; suma renglones
(define (suma-renglones r1 r2)
    (if (null? r1)
    '()
    (cons (+ (car r1) (car r2))
            (suma-renglones (cdr r1) (cdr r2)))
    )
)


(define nomina '((1 (raul perez) 1 100)
                (2 (pablo diaz)  2 101)
                (3 (Mario de la fuente)  3 103))
)

;pedirselo a peña
;(define (lista-depto depto nomina)
;    (cond ((null? nomina) '())
;    ((= depto (caddr car nomina)))
;    (cons (cadr (car)))
;    ))


;ver ppt, pilas y filas
;top
;push
;pop
