(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 464 time) (>= 464 (* 2 time)))))

(check-synth)