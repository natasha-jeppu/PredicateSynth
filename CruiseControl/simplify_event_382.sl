(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (not (>= speed 4)) (not (>= speed 1)))))

(check-synth)