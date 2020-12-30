(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 1239 time) (>= 15 (- 572 time)))))

(check-synth)