(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (>= 17 (- methane 605)) (not (>= methane (+ 2 605))) (not (>= 605 methane)))))

(check-synth)