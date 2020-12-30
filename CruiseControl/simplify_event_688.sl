(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 1239 time)) (not (>= 572 (- time 1239))))))

(check-synth)