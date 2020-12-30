(set-logic LIA)
(synth-fun inv ((cmd Int) ) Bool)

(declare-var cmd Int)


(constraint (= (inv cmd) (and (not (>= 2 cmd)) (not (= 4 cmd)) (not (= 3 cmd)))))

(check-synth)