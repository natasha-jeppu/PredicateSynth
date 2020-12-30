(set-logic LIA)
(synth-fun inv ((cmd Int) ) Bool)

(declare-var cmd Int)


(constraint (= (inv cmd) (and (not (>= 2 cmd)) (= 4 cmd))))

(check-synth)