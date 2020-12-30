(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 1217) (>= 472 (- time (* 2 472))))))

(check-synth)