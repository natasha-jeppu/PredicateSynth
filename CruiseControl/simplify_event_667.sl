(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 514 time)) (not (>= 664 time)))))

(check-synth)