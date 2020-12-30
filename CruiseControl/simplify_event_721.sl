(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 572 (* 2 (* 2 time)))) (not (>= time 572)))))

(check-synth)