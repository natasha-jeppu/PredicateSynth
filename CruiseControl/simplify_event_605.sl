(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 562 (+ 17 time)) (>= 732 (* 3 time)))))

(check-synth)