(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 581 time)) (>= 581 (- time 1064)))))

(check-synth)