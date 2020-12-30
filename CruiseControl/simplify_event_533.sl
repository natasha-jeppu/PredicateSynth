(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 620 time) (not (>= 620 (- 1154 time))))))

(check-synth)