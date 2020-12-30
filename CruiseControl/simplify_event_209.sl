(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 407 (- time 918)) (not (>= 918 time)))))

(check-synth)