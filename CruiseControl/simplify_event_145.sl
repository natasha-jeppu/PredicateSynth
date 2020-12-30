(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 564 (- time 1183)) (>= 564 time))))

(check-synth)