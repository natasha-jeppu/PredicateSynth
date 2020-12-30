(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (not (= 3 (- speed 3))) (= 3 (- 10 speed)))))

(check-synth)