(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 662 (+ 821 (- 821 time))) (not (>= 662 (- time 662))))))

(check-synth)