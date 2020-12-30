(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (>= 1 (- 601 methane)) (>= 1 (- methane 601)))))

(check-synth)