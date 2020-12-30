(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (>= 31 water) (not (= 2 (- 31 water))))))

(check-synth)