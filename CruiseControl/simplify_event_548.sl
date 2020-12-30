(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 671) (not (>= 671 (- time 1018))))))

(check-synth)