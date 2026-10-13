#lang sicp

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p)) 

;;;; Applicative-Order EvaluationWith 
;;; an interpreter using applicative-order evaluation, we can observe that the process hangs indefinitely 
;;; (or eventually crashes due to a stack overflow).Because applicative-order evaluation dictates that the 
;;; interpreter must evaluate the operator and all operands before applying the resulting procedure, it 
;;; attempts to evaluate the arguments 0 and (p). When it tries to evaluate (p), it looks up the definition 
;;; of p and finds that it is simply a call to itself: (define (p) (p)). This triggers an infinite recursive loop. 
;;; The evaluation of the arguments never finishes, so the test procedure is never actually applied.   

;;;; Normal-Order EvaluationWith 
;;; an interpreter using normal-order evaluation, we can observe the interpreter return the value 0.
;;; Normal-order evaluation delays the evaluation of operands until their values are strictly needed 
;;; (a "fully expand and then reduce" method). The interpreter substitutes the unevaluated expressions directly 
;;; into the body of the test procedure:   (if (= 0 0) 0 (p))According to the evaluation rule for the if special form, 
;;; the predicate (= 0 0) is evaluated first. Since 0 is equal to 0, the predicate evaluates to true. The interpreter 
;;; then evaluates and returns the consequent, which is 0. The alternative expression (p) is ignored and never 
;;; evaluated, safely bypassing the infinite loop.   
