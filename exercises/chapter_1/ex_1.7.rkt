;;; The contrast between function and procedure is a reflection of the general disticition between describing properties of things
;;; and describing how to do things (destinction between declarative knowledge and imparative knowledge)

;;; In math, usually concerned with declarative (what is) descriptions
;;; In CS, usually concerned with imparative descriptions

;;;; Square Roots by Newton's method

;(define (sqrt x)
;    (the y (and (>= y 0)
;                (= (square y) x))))

;;; strategy as a procedure

;(define (sqrt-iter guess x)
;    (if (good-enought? guess x)
;    guess
;    (sqrt-iter (improve guess x)
;               x)))

;;; A guess is improved by averaging it with the quotient of the radicand and the old guess:

;(define (improve guess)
;        (average guess (/ x guess)))

;;; average

;(define average x y)
;    (/ (+ x y) 2)

;;; good enough: The idea is to improve the answer until it is close enough to that its square differs from the radicand by less than a predetermined tolerance (here .0001):

;(define (good-enough? guess x)
;   (< (abs (- (square guess) x)) 0.001))

;;; Finally, we need a way to get started. We can guess that the square root of any number is 1.

;(define (sqrt x)
;    (sqrt-iter 1.0 x))


#lang sicp

(define (abs n) 
    (if (< n 0)
        (- n) 
        n))

(define (square z)
    (* z z))

(define (good-enough guess prev-guess)
    (< (abs (- guess prev-guess)) 
        (* guess 0.001)))       

(define (average x y)
    (/ (+ x y) 2))

(define (improved guess x)
    (average guess (/ x guess)))

(define (sqrt-iter guess prev-guess x)
    (if (good-enough guess prev-guess)
        guess
        (sqrt-iter (improved guess x)
                    guess x)))

(define (sqrt x)
    (sqrt-iter 1.0 0.0 x))


(sqrt 9)
(square(sqrt 1000))

(sqrt 0.0005)
(sqrt 9999)
