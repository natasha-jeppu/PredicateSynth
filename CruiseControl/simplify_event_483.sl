(set-logic LIA)
(synth-fun inv ((speed Int) (throttle Int) ) Bool)

(declare-var speed Int)
(declare-var throttle Int)


(constraint (= (inv speed throttle) (and (>= speed throttle) (>= speed (* 2 throttle)) (>= 6 throttle) (not (>= speed (* 3 throttle))))))

(check-synth)