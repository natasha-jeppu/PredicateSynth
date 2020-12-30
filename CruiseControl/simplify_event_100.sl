(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 509 (- time 509))) (not (>= 509 (- time 739))))))

(check-synth)