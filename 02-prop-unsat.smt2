; Propositional UNSAT example
(set-logic QF_UF)

(declare-const P Bool)

(assert P)
(assert (not P))

(check-sat)
; Expect: unsat
