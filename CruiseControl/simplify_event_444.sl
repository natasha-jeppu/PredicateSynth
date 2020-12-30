(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 497 time) (not (>= 497 (* 2 time))))))

(check-synth)