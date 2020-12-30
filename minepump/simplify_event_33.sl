(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (>= 20 (- water 56)) (= 20 (- water 56)))))

(check-synth)