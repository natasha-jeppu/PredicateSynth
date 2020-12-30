(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 596 (- time 1189)) (not (>= time 596)))))

(check-synth)