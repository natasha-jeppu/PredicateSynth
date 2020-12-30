(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (>= water 37) (not (= 15 (- water 27))))))

(check-synth)