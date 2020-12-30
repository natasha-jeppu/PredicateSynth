(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (not (= 1 (- water 47))) (not (= 47 water)) (not (= 2 (- water 47))))))

(check-synth)