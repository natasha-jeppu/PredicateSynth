(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 358 (- 1139 time)) (not (>= 358 (- time 1139))))))

(check-synth)