(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 949 time) (not (>= 494 time)))))

(check-synth)