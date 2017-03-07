#lang racket
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; promedio

;(define l '(a0111111 (Jorge Perez) (100 100 100)));define lista
;
;(define l2 '((a0111111 (Jorge Perez) (100 100 100)) (a0222222 (Gloria Flores) (90 80 100))))
;
;
;
;(define (sum elemList)
;  (if
;    (null? elemList)
;    0
;    (+ (car elemList) (sum (cdr elemList)))
;  )
;)
;
;
;(define (promedio-aux lista)
;  (cond ((list? lista)
;         (list (car lista) (/ (sum (car(cddr lista))) (length(car(cddr lista)))))
;         ))
;  )
;
;
;(define (promedio l)
;(cond ((list? l)
;       (cdr (promedio-aux))
;       ))
;)
;
;(promedio-aux l)












;(define (cuenta-hojas t)
;  (cond ((null? t) 0))
;  (cond ((null? (right t)) 1))
;;         (+ (cuenta-hojas (left  t)) (cuenta-hojas (right t)))
;
;  )
;
;
;(define (left tree)
;  (cadr tree))
;
;(define (right tree)
;  (caddr tree))
;
;
;
;  ;define what a leaf, node-1, and node-2 is
; (define leaf list)
; (define node-1 list)
; (define node-2 list)


(define (left tree)
  (cadr tree))

(define (right tree)
  (caddr tree))

(define (leaf? tree) (number? (car tree)))

(define (node? tree) (pair? (car tree)))

(define (value node)
  (if (null? node) '()
      (car node)))


(define (leaf-count t)
  (cond ((null? t) 0)
        (else (+ 1
                 (leaf-count (left  t))
                 (leaf-count (right t))))))






(leaf-count '(8(5(2()())(7()()))(9()(15(11()())()))))
