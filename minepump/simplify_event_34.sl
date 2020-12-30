(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (>= 1 (- methane 605)) (not (= 2 (- 605 methane))))))

(check-synth)