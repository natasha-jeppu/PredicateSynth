(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 1014 time) (not (>= 475 (- time 475))))))

(check-synth)