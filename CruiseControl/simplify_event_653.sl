(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time 1163)) (not (>= 458 (- 1163 time))))))

(check-synth)