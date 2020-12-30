(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 2 (- time (* 2 620))) (= 2 (- time (* 2 620))))))

(check-synth)