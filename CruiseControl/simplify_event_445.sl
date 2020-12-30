(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 715 (- time 715)) (not (>= time 715)))))

(check-synth)