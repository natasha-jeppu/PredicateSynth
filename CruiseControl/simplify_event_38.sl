(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (not (= 1 (- 7 speed))) (not (= 7 speed)))))

(check-synth)