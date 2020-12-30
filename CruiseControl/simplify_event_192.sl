(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 1217) (not (>= 472 (- time (* 2 472)))) (not (>= time (+ 472 1217))) (not (>= 472 (* 2 (- time 1217)))))))

(check-synth)