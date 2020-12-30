(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (= 546 (* 2 (- time 2)))) (>= time (* 2 473)))))

(check-synth)