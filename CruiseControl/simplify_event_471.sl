(set-logic LIA)
(synth-fun inv ((speed Int) (throttle Int) ) Bool)

(declare-var speed Int)
(declare-var throttle Int)


(constraint (= (inv speed throttle) (and (>= speed throttle) (not (>= speed (* 2 throttle))))))

(check-synth)