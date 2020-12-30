(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 673 (- time 1064)) (not (>= time 673)))))

(check-synth)