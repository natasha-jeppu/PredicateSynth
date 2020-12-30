(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (>= 603 methane) (not (>= 1 (- 603 methane))))))

(check-synth)