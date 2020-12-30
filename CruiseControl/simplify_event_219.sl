(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 651 (- 987 time)) (not (>= 987 (* 2 time))))))

(check-synth)