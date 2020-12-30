(set-logic LIA)
(synth-fun inv ((cmd Int) ) Bool)

(declare-var cmd Int)


(constraint (= (inv cmd) (and (not (= 1 cmd)) (= 3 cmd))))

(check-synth)