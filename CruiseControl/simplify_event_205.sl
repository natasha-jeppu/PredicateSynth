(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time (* 3 351)) (not (= 3 (- 1233 time))))))

(check-synth)