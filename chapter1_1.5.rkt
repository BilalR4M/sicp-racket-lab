;;;;;
Application order

To apply a compound procedure to arguments, evaluate the body of the
procedure with each formal parameter replaced by the corresponding
argument.

To illustrate this process, let's evaluate the combination
(f 5)
where f is the procedure defined in section 1.1.4. We begin by retrieving the
body of f:
(sum-of-squares (+ a 1) (* a 2))
Then we replace the formal parameter a by the argument 5:
(sum-of-squares (+ 5 1) (* 5 2))
Thus the problem reduces to the evaluation of a combination with two operands
and an operator sum-of-squares. Evaluating this combination involves three
subproblems. We must evaluate the operator to get the procedure to be applied,
and we must evaluate the operands to get the arguments. Now (+ 5 1) produces
6 and (* 5 2) produces 10, so we must apply the sum-of-squares procedure to
6 and 10. These values are substituted for the formal parameters x and y in the
body of sum-of-squares, reducing the expression to
(+ (square 6) (square 10))
If we use the definition of square, this reduces to
(+ (* 6 6) (* 10 10))
which reduces by multiplication to
(+ 36 100)
and finally to
136
The process we have just described is called the substitution model for procedure
application.
;;;;;

;;;;;
normal order

t would first substitute operand expressions for parameters
until it obtained an expression involving only primitive operators, and would
then perform the evaluation. If we used this method, the evaluation of
(f 5)
would proceed according to the sequence of expansions
(sum-of-squares (+ 5 1) (* 5 2))
(+ (square (+ 5 1)) (square (* 5 2)) )
(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
followed by the reductions
(+ (* 6 6) (* 10 10))
(+ 36 100)
136
This gives the same answer as our previous evaluation model, but the process is
different. In particular, the evaluations of (+ 5 1) and (* 5 2) are each
performed twice here, corresponding to the reduction of the expression
(* x x)
with x replaced respectively by (+ 5 1) and (* 5 2).
This alternative ``fully expand and then reduce'' evaluation method is known as
normal-order evaluation, in contrast to the ``evaluate the arguments and then
apply'' method that the interpreter actually uses, which is called applicative-order
evaluation. It can be shown that, for procedure applications that can be modeled
using substitution (including all the procedures in the first two chapters of this
book) and that yield legitimate values, normal-order and applicative-order
evaluation produce the same value. (See exercise 1.5 for an instance of an
``illegitimate'' value where normal-order and applicative-order evaluation do not
give the same result.)
Lisp uses applicative-order evaluation, partly because of the additional efficiency
obtained from avoiding multiple evaluations of expressions such as those
illustrated with (+ 5 1) and (* 5 2) above and, more significantly, because
normal-order evaluation becomes much more complicated to deal with when we
leave the realm of procedures that can be modeled by substitution. 

;;;;;