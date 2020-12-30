(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time (* 2 (- 803 427)))) (not (>= time 427)))))

(check-synth)