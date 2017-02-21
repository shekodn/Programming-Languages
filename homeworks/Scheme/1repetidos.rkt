#lang racket
;repetidos
;done
(define (repetidos-aux list)
  (cond ((null? list) #f)
        ((member (car list) (cdr list)) #t)
        (else (repetidos-aux (cdr list)))))


(define (repetidos? a b c d e)

  (repetidos-aux (list a b c d e))
)

(repetidos? 1 2 3 4 5) ;=> #f
(repetidos? 1 -2 1 -2 1) ;=> #t
