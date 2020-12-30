(set-logic LIA)
(synth-fun inv ((cmd Int) ) Bool)

(declare-var cmd Int)


(constraint (= (inv cmd) (and (not (>= 6 cmd)) (not (= 7 cmd)))))

(check-synth)