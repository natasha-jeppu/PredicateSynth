(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (>= 17 (- methane 605)) (>= methane (+ 2 605)))))

(check-synth)