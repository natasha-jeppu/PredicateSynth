(set-logic LIA)
(synth-fun inv ((speed Int) (throttle Int) ) Bool)

(declare-var speed Int)
(declare-var throttle Int)


(constraint (= (inv speed throttle) (and (>= throttle speed) (= 1 (- speed 2)))))

(check-synth)