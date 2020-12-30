(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 671) (>= 671 (- time 1018)) (>= 671 (- time 671)))))

(check-synth)