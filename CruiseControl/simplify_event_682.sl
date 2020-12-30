(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 488 (- time 488)) (not (>= 1 (- time 560))))))

(check-synth)