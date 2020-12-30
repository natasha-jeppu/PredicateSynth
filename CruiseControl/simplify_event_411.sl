(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 1269 time)) (>= 447 (- time 1269)))))

(check-synth)