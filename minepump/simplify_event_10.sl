(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (not (= 596 methane)) (= 1 (- 596 methane)))))

(check-synth)