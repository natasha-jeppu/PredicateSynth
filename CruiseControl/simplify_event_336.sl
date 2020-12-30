(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 424 (- time 424))) (not (>= time 1050)))))

(check-synth)