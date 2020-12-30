(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 438 (- 1495 time)) (>= 1495 time))))

(check-synth)