(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (>= 1 speed) (not (= 1 speed)))))

(check-synth)