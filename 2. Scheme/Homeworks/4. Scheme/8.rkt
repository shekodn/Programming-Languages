#lang racket

(define g'((A (B 2) (D 10))
              (B (C 9) (E 5))
                (C (A 12) (D 6))
                  (D (E 7))
                    (E (C 3))))

(map first g)
(map cdr g) ;returns final node and weigth


(define (insert-first element list)
  (map (lambda (x)
         (cons element x))
       (cdr list)))

(insert-first 'x (map cdr g))
