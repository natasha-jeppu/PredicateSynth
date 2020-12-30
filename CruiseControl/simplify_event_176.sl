(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time (* 2 (- 803 427))) (not (>= 803 (- 427 (- 803 time)))))))

(check-synth)