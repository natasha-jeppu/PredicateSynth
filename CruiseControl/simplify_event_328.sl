(set-logic LIA)
(synth-fun inv ((distance Int) (speed Int) (throttle Int) ) Bool)

(declare-var distance Int)
(declare-var speed Int)
(declare-var throttle Int)


(constraint (= (inv distance speed throttle) (and (>= 12 (- speed distance)) (not (= 2 (- distance 3))) (not (>= distance throttle)))))

(check-synth)