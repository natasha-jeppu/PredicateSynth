(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 603 (- time (- 945 time))) (not (>= 603 (* 2 time))))))

(check-synth)