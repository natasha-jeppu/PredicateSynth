(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 1022 time)) (>= 542 (- time 1022)))))

(check-synth)