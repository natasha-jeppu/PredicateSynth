(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 493 (* 2 time))) (not (>= 440 time)))))

(check-synth)