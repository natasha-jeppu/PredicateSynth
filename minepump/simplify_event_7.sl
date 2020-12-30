(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (>= 1 (- 605 methane)) (>= 16 (- methane 605)))))

(check-synth)