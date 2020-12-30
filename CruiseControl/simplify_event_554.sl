(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 441 (- time 1196)) (>= time 1196))))

(check-synth)