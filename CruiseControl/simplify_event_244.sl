(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 467) (not (>= 467 (- time 919))) (= 2 (- time (* 3 467))))))

(check-synth)