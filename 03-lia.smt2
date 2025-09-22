; Linear Integer Arithmetic
(set-logic QF_LIA)

(declare-const x Int)
(declare-const y Int)

; Constraints:
; 1) x >= 0
; 2) y = 2*x + 3
; 3) y <= 11
(assert (>= x 0))
(assert (= y (+ (* 2 x) 3)))
(assert (<= y 11))

(check-sat)
(get-model)
; One model: x = 4, y = 11
