;;;; Conditional

;; Case Analysis: |r| absolute value of r
;;   +r if r > 0
;;    0 if r = 0
;;   -r if r < 0

;;; General form of Conditional expression
;;; (cond (<p1> <e1>)
;;;       (<p2> <e2>)
;;;       (<pn> <en>))

;; Premitive predicates <, = and >.

#lang sicp

;(define (abs x)
;    (cond ((> x 0) x)
;          ((= x 0) 0)
;          ((< x 0) (-x))))

;;; Another way to to define

;(define (abs x)
;        (cond ((< x 0) (- x))
;               (else x)))

;;; special form if, a restricted type of Conditional 
;;; used when there are precisely two cases in the case Analysis
;; (if <predicate> <consequent> <alternative>)

(define (abs x)
    (if (< x 0) 
        (- x)
        x))

(abs -15)
(abs 10)
(abs 0)


;;; Construct comound predicates 

;;; The interpreter evaluates the expressions <e> one at a time from left-to-right order.

;; (and <e1> ... <en>)  If any of the the and expression is false, the value of the and expression is false, and the rest is not evaluated.
;;                      If all <e>'s evaluate to true values, the value to the and expression is the value of the last one.
;; (or <e1> ... <en>)   If any <e> evaluates to ture, that value is returned as the valure of the or expression, and the rest of the <e>'s are not evaluated.
;;                      If all <e>'s evaluate to false, the of the or expression is false.
;; (not <e>)            Value of not expression is true when the expression <e> evaluated to false, and false otherwise.

;; range 5 < x < 10
(define x 6)
(and (< x 5) (> x 10))

;; greater than or equal to another as 

(define (>= x y)
    (not (< x y)))

(>= 10 5)