(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 867 time) (not (= 2 (- 246 (- 867 time)))))))

(check-synth)