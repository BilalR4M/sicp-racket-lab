;;;; Compound procedures

;; Procedure definitions

#lang sicp

;; Define a procedure that square the parameter value
(define (square x) (* x x)) ;(define (<name> <formal parameters>) <body>)

(square 21)

(square (+ 2 5))

(square (square 3))

;; Define a procedure using square to find the sum of two squares
(define (sum_of_squares x y) (+ (square x) (square y)))

(sum_of_squares 3 4)

(define (f a)
    (sum_of_squares (+ a 1) (* a 2))
)

(f 5)