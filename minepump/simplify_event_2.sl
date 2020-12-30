(set-logic LIA)
(synth-fun inv ((water Int) (methane Int) ) Bool)

(declare-var water Int)
(declare-var methane Int)


(constraint (= (inv water methane) (and (not (>= 19 (- methane 565))) (>= 565 (- methane water)))))

(check-synth)