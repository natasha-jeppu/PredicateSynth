(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 612 (- time 1001)) (>= 1001 time) (not (>= 612 time)))))

(check-synth)