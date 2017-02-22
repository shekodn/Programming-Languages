#lang racket
(define (merge-numbers lst)
  (let ((1st (number->string (first  lst)))
        (2nd (number->string (second lst))))
    (string->number (string-append 1st 2nd))))
