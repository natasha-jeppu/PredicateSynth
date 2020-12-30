(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 407 (- time 918)) (>= 918 time) (not (>= 407 (- 918 time))))))

(check-synth)