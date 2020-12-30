(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 449 (- time 449)) (not (>= time 449)))))

(check-synth)