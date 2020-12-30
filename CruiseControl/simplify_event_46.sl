(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 673 (- time 1064)) (>= time 673) (>= 673 (+ 1064 (- 1064 time))))))

(check-synth)