(set-logic LIA)
(synth-fun inv ((water Int) ) Bool)

(declare-var water Int)


(constraint (= (inv water) (and (>= water 41) (= 1 (+ 9 (- 41 water))))))

(check-synth)