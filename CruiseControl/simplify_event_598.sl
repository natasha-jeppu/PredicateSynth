(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time 496)) (not (>= 496 (* 2 time))))))

(check-synth)