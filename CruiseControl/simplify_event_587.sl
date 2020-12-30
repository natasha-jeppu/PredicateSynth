(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 2 (- time (* 2 620)))) (not (>= 620 (* 2 (- time 969)))))))

(check-synth)