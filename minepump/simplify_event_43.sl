(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (not (= 1 (- water 47))) (= 47 water))))

(check-synth)