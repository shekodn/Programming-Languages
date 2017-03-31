#lang racket
(define (potencia l)
 (AuxPotencia (delete-add l (list l) 0) 0 )
 )

(define (AuxPotencia l b)
  (cond
    ((< b (length l)) (AuxPotencia (delete-add (list-ref l b) l 0) (+ b 1)))
    (else (reverse (remove-duplicates l)))
 )
 )

 (define (delete-add l1 l2 c)
  (cond
    ((< c (length l1)) (delete-add l1 (append l2 (list (remove* (list (list-ref l1 c)) l1 ))) (+ c 1) ))
    (else l2)
   )
 )
