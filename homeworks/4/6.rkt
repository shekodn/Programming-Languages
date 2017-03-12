
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


(define (get-list-index l el)
    (if (null? l)
        -1
        (if (= (car l) el)
            0
            (let ((result (get-list-index (cdr l) el)))
                (if (= result -1)
                    -1
                    (+ 1 result))))))

(define (element-index e lst)
    (cond [(eqv? e (car lst)) 0]
          [else (+ (element-index e (cdr lst)) 1)]))


(get-list-index '(2 2 2 1 1) 1)
(element-index  1 '(2 2 2 1 1))
