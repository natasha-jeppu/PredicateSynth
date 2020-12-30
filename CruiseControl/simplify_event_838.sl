(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 567 (* 2 time))) (>= time 1007) (not (>= 567 (- time 567))))))

(check-synth)