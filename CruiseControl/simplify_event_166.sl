(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time 662)) (>= 662 (* 2 time)))))

(check-synth)