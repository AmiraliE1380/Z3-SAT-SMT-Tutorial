; Quantifiers over integers
; This asserts: ∀x. ∃y. y > x   (always true over unbounded integers)
(set-logic LIA)

(assert (forall ((x Int)) (exists ((y Int)) (> y x))))

(check-sat)
(get-model)
; Expect: sat
; (get-model) is optional; with quantifiers, models may be schematic.
