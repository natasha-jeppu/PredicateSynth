(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (>= water 33) (not (= 1 (+ 33 (- 38 water)))))))

(check-synth)