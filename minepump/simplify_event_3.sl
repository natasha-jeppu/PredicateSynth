(set-logic LIA)
(synth-fun inv ((water Int) (methane Int) ) Bool)

(declare-var water Int)
(declare-var methane Int)


(constraint (= (inv water methane) (and (>= 31 water) (= 2 (- 31 water)) (not (>= 565 (- methane water))))))

(check-synth)