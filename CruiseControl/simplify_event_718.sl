(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (not (>= 3 speed)) (>= 7 speed))))

(check-synth)