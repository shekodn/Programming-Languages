#lang racket
(define (ordena arreglo)
  (if (null? arreglo)
      arreglo
      (inserta (car arreglo)
               (ordena (cdr arreglo)))))

(define (inserta elemento ordenado)
  (cond ((null? ordenado) (list elemento))
        ((> elemento (car ordenado))
         (cons (car ordenado)
               (inserta elemento (cdr ordenado))))
        (else (cons elemento ordenado))))

(define (mezcla l1 l2)
  (AuxMezcla (ordena (append l1 l2)))
  )

(define (AuxMezcla l)
  (cond
    ((empty? l) '())
    ((member (car l) (cdr l))
     (AuxMezcla (cdr l)))
    (else (cons (car l) (AuxMezcla (cdr l))))
   )
 )
