(set-logic LIA)
(synth-fun inv ((speed Int) ) Bool)

(declare-var speed Int)


(constraint (= (inv speed) (and (>= speed 11) (= 7 (- speed 7)))))

(check-synth)