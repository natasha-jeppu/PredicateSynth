(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 333 (- 770 time)) (not (>= 770 time)))))

(check-synth)