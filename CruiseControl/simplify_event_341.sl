(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 773) (not (>= 773 (- time 773))))))

(check-synth)