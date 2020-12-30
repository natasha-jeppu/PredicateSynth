(set-logic LIA)
(synth-fun inv ((speed Int) (throttle Int) ) Bool)

(declare-var speed Int)
(declare-var throttle Int)


(constraint (= (inv speed throttle) (and (not (= 1 throttle)) (= speed (* speed throttle)))))

(check-synth)