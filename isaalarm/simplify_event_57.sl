(set-logic LIA)
(synth-fun inv ((cmd Int) ) Bool)

(declare-var cmd Int)


(constraint (= (inv cmd) (and (>= 2 cmd) (not (>= 1 cmd)))))

(check-synth)