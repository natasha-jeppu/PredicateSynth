(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (= 2 (- time (+ 2 938)))) (>= 938 (* 2 time)))))

(check-synth)