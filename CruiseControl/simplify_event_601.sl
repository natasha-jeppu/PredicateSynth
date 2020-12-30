(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 612 (- time 1001)) (>= 1001 time) (>= 612 time) (not (>= 612 (- 1001 time))))))

(check-synth)