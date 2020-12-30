(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 563 (- time 563)) (not (>= time 1010)) (not (>= 563 time)))))

(check-synth)