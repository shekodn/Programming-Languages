;Cuenta elementos de una lista
(define (cuenta lista)
(if (null?) lista)
    0
    (+ 1 (cuenta(cdr lista)))
)


;cero listas con n ceros
(define(ceros n)
    (if (zero?) n)
    '()
    (cons 0 (ceros( (- n 1))))
)

;incrementa valores de una lista de numeros
(define (incrementa lista)
    (if (null? list)
    '()
    (cons (+ (car lista) 1)
        incrementa (cdr lista)))
)

; cuenta los atomos dentro de una lista imbricada
(define(cuenta-atomos lista)
    (cond ((null? lista) 0) ;base
    ;;casos generales
        ((list? (car lista)) (+ (cuenta-atomos (car lista))
                                    (cuenta-atomos (cdr lista))))
        (else (+ 1 (cuenta-atomos (cdr lista))))
    )
)

;anida n veces el valor n
(define (anida-nveces n)
    (anida-aux n n)
)

;funcion para anidar n veces n
;n recuerda valor original
(define(anida-aux n faltan)
    (if (zero? faltan)
    (list n)
    (list (anida-aux n(- faltan 1))))
)

;inrementa los numeros dentro de una lista posiblemente imbricada
(define(inrementa-li)
    (cond ((null? lista) '()') ;caso base
    ;casos generales
    ((number? (car lista)) (cons (+ (car lista) 1)
                                    (incrementa-li (cdr lista ))))
    )
)s
