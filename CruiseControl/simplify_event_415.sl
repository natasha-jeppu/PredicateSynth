(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 705 (- time 1195)) (not (>= 705 (- 1195 time))))))

(check-synth)