(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (not (= 0 speed)) (not (= 4 speed)) (= 5 speed))))

(check-synth)