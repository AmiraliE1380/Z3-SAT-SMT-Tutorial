; Strings (Z3 supports many str.* operations)
(set-logic QF_S)

(declare-const a String)
(declare-const b String)
(declare-const c String)

; a = "ab", b = "cd", c = a ++ b = "abcd"
(assert (= a "ab"))
(assert (= b "cd"))
(assert (= c (str.++ a b)))

; Ensure "bc" occurs as a substring of "abcd"
(assert (str.contains c "bc"))

(check-sat)
(get-model)
