(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 563 (- time 563))) (not (>= 563 (- time 1010))))))

(check-synth)