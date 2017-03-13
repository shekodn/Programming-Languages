;2. Implementar la función busca-nivel en Scheme que dados un árbol binario de
;búsqueda y un valor como argumentos, busque el valor y regrese el nivel de
;profundidad en el que lo encontró. La raíz del árbol completo está a nivel 0.
;Regresar -1 en caso de no encontrar el valor dentro del árbol.

#lang racket

(define ABB
      '(8  (5  (2  ()  ())
              (7  ()  ()))
          (9  ()
              (15 (11  ()  ())
                  () ))))



;(define (busca-nivel tree)
;(let depths ((tree tree)
;             (depth 0)
;             (results '()))
;  (cond
;    ((null? tree) results)
;    ((pair? tree) (depths (car tree)
;                          (+ 1 depth)
;                          (depths)))
;    (else depth))))

;(define (busca-nivel lst)
;  (let depth ((lst lst) (n 1))
;    (cond ((null? lst) '())
;          ((not (pair? (car lst)))
;           (cons n
;                 (cons (car lst)
;                       (depth (cdr lst) n))))
;          (else
;           (append (depth (car lst) (+ 1 n))
;                   (depth (cdr lst) n))))))
;
;
;
;(busca-nivel ABB)

;(define-struct BT (left right))
;
;(define t
;  (make-BT empty (make-BT empty empty))
;  (make-BT empty empty)
;  )
;
;


;(define (height tree)
 ; (if (null? tree)  ; if the tree is empty
  ;    0  ; then return the height of the empty tree
   ;   (+ 1 ; otherwise return 1 plus the maximum between
    ;     (max (height <???>)     ; the height of the left subtree
     ;         (height <???>))))) ; and the height of the right subtree

;(define (make-node datum children)
;  (cons datum children))
;
;(define (datum node)
;  (car node)
;  )
;
;(define (children node)
;  (cdr node))
;
;
;(define (leaf? tree)
;  (null? (children tree)))

;(define (depth tree)
;  (if (leaf? tree)
;    1
;    (find-depth tree 1)))

;(define (find-depth tree d)
;  (apply max
;         (cons d
;              (find-depth-in-forest (children tree) (+ 1 d)))))
;
;(define (find-depth-in-forest tree d)
;  (if (null? tree)
;    '()
;    (cons (find-depth (car tree) d)
;          (find-depth-in-forest (cdr tree) d))))
;
;
;(define (nestingDepth lst)
;  (let depth ((lst lst) (n 1))
;    (cond ((null? lst) '())
;          ((not (pair? (car lst)))
;           (cons n
;                 (cons (car lst)
;                       (depth (cdr lst) n))))
;          (else
;           (append (depth (car lst) (+ 1 n))
;                   (depth (cdr lst) n))))))
;
;

;Tree helper methods
(define but-left cdr)
(define left car)
(define right cdr)
(define (leaf? val) (not (pair? val)))
(define empty-tree? null?)
(define parent? list?)

(define (depth tree)
  (cond ((empty-tree? tree) 1)
  ((leaf? tree) 1)
  ((parent? tree)
    (max (+ 1 (depth (left tree)))
    (depth (but-left tree))))
    (else (error "bad input" depth tree))))

(depth ABB) ;=>  3
;(busca-nivel AB 5)  =>  1
;(busca-nivel AB 4)  => -1
