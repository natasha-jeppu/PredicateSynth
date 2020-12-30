(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 744 time)) (>= 744 (- time 1167)))))

(check-synth)