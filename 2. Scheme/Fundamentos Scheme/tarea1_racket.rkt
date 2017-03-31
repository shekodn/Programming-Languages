#lang racket

;1.	Programar en Scheme la función circulo que reciba 1 argumento numérico
;representando su radio y un símbolo que especifica una propiedad a calcular
;(perímetro, área y diámetro) y regrese el valor de esa propiedad.

(define pi 3.141592)

(define (circulo radio opcion)
  (match opcion
    ['perimetro (* (* 2 radio) pi)]
    ['area      (* (* radio radio) pi)]
    ['diametro  (* 2 radio)]))

(circulo 4 'perimetro)
(circulo 4 'area)
(circulo 4 'diametro)


;2. Programar en Scheme la función mayor que reciba 3 argumentos numéricos y
;regrese el mayor.


(define (compara x y)
  (if(> x y) x y)
)

(define (mayor x y z w)
  (if (> (compara x y) (compara z w)) (compara x y) (compara z w))
)

(mayor 7 5 3 6)
(mayor 1 2 3 4)
(mayor 9 9 9 9)

;3. Programar en Scheme la función paronon que reciba 4 argumentos numéricos y
;regrese un símbolo que indique si hay más pares, más nones o un empate.


(define (decidir contador)
  (cond ((positive? contador) 'nones)
        ((negative? contador) 'pares)
        ((zero? contador    ) 'empate)))

(define (_paronon lista contador)
  (if (empty? lista) (decidir contador)
  (if (odd? (first lista)) (_paronon (rest lista) (+ contador 1)) (_paronon (rest lista) (- contador 1)))))

(define (paronon uno dos tres cuatro)
  (_paronon (list uno dos tres cuatro) 0))

(paronon 7 5 3 1)
(paronon 1 2 3 4)
(paronon 2 6 7 8)
