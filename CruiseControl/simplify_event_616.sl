(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 662 (+ 821 (- 821 time)))) (>= 662 (* 2 time)))))

(check-synth)