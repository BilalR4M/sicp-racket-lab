
;;;; Naming and the environment

;; Initializing a variable named 'size'

#lang sicp

(define size 2)

size
(* 5 size)

;; diameter of a circle

(define pi 3.14159)
(define radius 10)

(* pi (* radius radius))

(define circumference (* 2 pi radius))
circumference