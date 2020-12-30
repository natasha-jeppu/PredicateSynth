(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 563 (- time 563)) (>= time 1010))))

(check-synth)