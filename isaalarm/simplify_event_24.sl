(set-logic LIA)
(synth-fun inv ((cmd Int) ) Bool)

(declare-var cmd Int)


(constraint (= (inv cmd) (and (not (>= 1 cmd)) (not (>= 3 cmd)) (not (= 5 cmd)))))

(check-synth)