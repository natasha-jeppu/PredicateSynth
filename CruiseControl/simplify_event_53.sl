(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 438 (- time 1314)) (not (>= 1314 time)))))

(check-synth)