(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 456 time) (>= 63 (* 2 (- 456 time))))))

(check-synth)