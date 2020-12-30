(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 572 (* 2 (* 2 time)))) (>= time 572) (not (>= 572 (* 2 (- time 572)))))))

(check-synth)