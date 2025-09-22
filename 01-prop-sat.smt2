; Propositional SAT example
(set-logic QF_UF)

(declare-const A Bool)
(declare-const B Bool)
(declare-const C Bool)

; (A or B) and (not A or C) and (not B or C)
(assert (or A B))
(assert (or (not A) C))
(assert (or (not B) C))

(check-sat)
(get-model)
