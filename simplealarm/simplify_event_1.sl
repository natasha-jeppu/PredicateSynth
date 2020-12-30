(set-logic LIA)
(synth-fun inv ((cmd Int) ) Bool)

(declare-var cmd Int)


(constraint (= (inv cmd) (and (>= 2 cmd) (not (>= cmd 2)) (not (= 2 (+ 2 cmd))))))

(check-synth)