(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (>= 2 (- speed 3)) (>= 0 speed))))

(check-synth)