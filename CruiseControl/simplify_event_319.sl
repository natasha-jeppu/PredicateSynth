(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 797 time) (>= 584 (* 2 time)))))

(check-synth)