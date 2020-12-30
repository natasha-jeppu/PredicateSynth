(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 667 (- time 667)) (>= 667 (* 2 time)))))

(check-synth)