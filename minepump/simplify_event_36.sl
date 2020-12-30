(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (>= 4 (- 80 water)) (not (= 2 (- water 80))))))

(check-synth)