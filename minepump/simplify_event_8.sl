(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (not (>= 7 (- 51 water))) (>= 16 (- 51 water)))))

(check-synth)