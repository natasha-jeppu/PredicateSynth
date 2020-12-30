(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 668 (- 782 time)) (>= 668 (* 2 (- time 668))) (>= time 668))))

(check-synth)