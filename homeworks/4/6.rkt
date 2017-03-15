;6
;función retorna los nodos que tienen n destinos
; recibe como parametros el grafo y los destinos
(define (n-destinos g n); se hace un map del grafo, adentro una función lambda para que reciba cada nodo y sus arcos
  (flatten (map (lambda (x) (cond ((= n (apply + (map (lambda (y) 1) (cdr x))) ) (car x)); se hace un appply +  para sumatoria del numero de arcos
                          (else '()))) g)); si la sumatoria de arcos es igual a n se agregase retorna el nodo para la lista resultante de map
); si no se regresa una lista vacía, al final se usa flatten para eliminar las listas vacías dentro del resultado
