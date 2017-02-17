#lang racket

(define (profundidad l)
    (cond ((null? l) 0)
        ((list? (car l)) (+ 1  (profundidad (car l))))
        (else  (+ 0  (profundidad (cdr l))))
    )
)

(define (anida n)
    (cond ((zero? n) (cons n '()))
    (else  (cons n (cons (anida (- n 1)) '() )))
    )
)

(define (elimina-aux list1 item)
( cond
    ((null? list1) '())
    ((pair? (car list1)) (cons (elimina-aux (car list1) item) (elimina-aux (cdr list1) item)))
    ((equal? (car list1) item) (elimina-aux (cdr list1) item))
    (else (cons (car list1) (elimina-aux (cdr list1) item)))
    ))


    (define (elimina item lista)
    (elimina-aux lista item)
    )

    (elimina 1 '(a b c))
    (elimina 'b '(a (b) c))
    (elimina 1 '(0 (1 (2) 1) 0))
