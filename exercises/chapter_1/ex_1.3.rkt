;;;; Define a procedure that takes 3 numbers as arguments and returns the sum of the squares of the two larger numbers

#lang sicp

(define (sum_of_squares_of_largest_two a b c) 
    (if (and (> a b) (> a c))
        (cond ((> b c) (+ (* a a) (* b b)))
            (else (+ (* a a) (* c c))))
        (if (and (> b a) (> b c))
            (cond ((> a c) (+ (* a a) (* b b)))
            (else (+ (* b b) (* c c))))
            (cond ((> a b) (+ (* a a) (* c c)))
            (else (+ (* b b) (* c c))))
            )))

(sum_of_squares_of_largest_two 6 3 2)