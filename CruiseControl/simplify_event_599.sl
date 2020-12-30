(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 612 (- time 1001)) (not (>= 1001 time)))))

(check-synth)