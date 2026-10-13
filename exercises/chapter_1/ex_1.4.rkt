;;; Here case analysis of absolute value of b is considered
;;; if the value is positive the operate is + making the b balue positive
;;; if the value is negative the operator is - making the b value positive

#lang sicp

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

(a-plus-abs-b 10 -5)


