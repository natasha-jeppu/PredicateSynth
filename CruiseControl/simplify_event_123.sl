(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 1105 time) (>= 554 time))))

(check-synth)