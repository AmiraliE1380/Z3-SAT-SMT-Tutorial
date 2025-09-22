; Real Arithmetic (linear)
(set-logic QF_LRA)

(declare-const r Real)
(declare-const s Real)

; Constraints:
; r + s = 1.5
; r >= 0.5
; s >= 0.5
(assert (= (+ r s) 1.5))
(assert (>= r 0.5))
(assert (>= s 0.5))

(check-sat)
(get-model)
; Example model: r = 1.0, s = 0.5
