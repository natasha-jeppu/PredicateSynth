(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (not (>= 36 water)) (not (>= 36 (- water 36))))))

(check-synth)