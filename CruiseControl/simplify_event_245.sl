(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 467) (>= 467 (- time 919)) (not (>= time 919)))))

(check-synth)