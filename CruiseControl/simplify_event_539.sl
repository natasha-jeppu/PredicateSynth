(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time 648)) (not (>= 648 (* 2 time))))))

(check-synth)