(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 644 (- time 644)) (not (>= 644 time)))))

(check-synth)