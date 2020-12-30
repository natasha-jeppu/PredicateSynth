(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 603 (- time (- 945 time)))) (not (>= time 945)))))

(check-synth)