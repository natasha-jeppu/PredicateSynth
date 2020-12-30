(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= time 528) (>= 528 (* 2 (- time 1106))))))

(check-synth)