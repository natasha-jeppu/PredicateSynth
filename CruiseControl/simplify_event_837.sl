(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 567 (* 2 time))) (not (>= time 1007)))))

(check-synth)