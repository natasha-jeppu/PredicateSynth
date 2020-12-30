(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (not (= 1 speed)) (not (= 3 speed)))))

(check-synth)