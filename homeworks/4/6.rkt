
#lang racket
(define g
            '((A (B 2) (D 10))
              (B (C 9) (E 5))
                (C (A 12) (D 6))
                  (D (E 7))
                    (E (C 3))
))



;counts how many elements are in a list
(define (suma list)
  (if (null? list)
      -1
      (+ 1 (suma (cdr list)))
  )
)


;list of legths: buil a new list with the lengths of each list on graphs ;excluding the grpah itself
(define (list-of-leghts lists)
  (if (null? lists)
      '()
      (cons (suma (car lists))
            (list-of-leghts (cdr lists))))
)

(list-of-leghts g)
