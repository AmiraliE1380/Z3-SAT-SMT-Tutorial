# Z3 SAT/SMT Tutorial
Hands-on Z3 SAT/SMT repo with tiny, well-commented `.smt2` problems: propositional (SAT/UNSAT), linear integers, reals, strings, and quantifiers. Great for quick demos and teaching. This repo contains six different satisfiability problems in widely used logics.

---

## Install Z3 (Ubuntu)

Z3 is a high-performance, open-source Satisfiability Modulo Theories (SMT) solver developed by Microsoft Research.

```bash
sudo apt update
sudo apt install -y z3
```

### Verify Installation
```bash
z3 --version
```
## How to Run

```bash
z3 <file_name>.smt2
# e.g.
z3 01-prop-sat.smt2
```
## Examples
### 1) Propositional Logic — SAT

File: `01-prop-sat.smt2`

```
; Propositional SAT example
(set-logic QF_UF)

(declare-const A Bool)
(declare-const B Bool)
(declare-const C Bool)

; (A or B) ∧ (¬A or C) ∧ (¬B or C)
(assert (or A B))
(assert (or (not A) C))
(assert (or (not B) C))

(check-sat)
(get-model)
```

