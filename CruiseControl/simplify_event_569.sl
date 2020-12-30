(set-logic LIA)
(synth-fun inv ((distance Int) (throttle Int) ) Bool)

(declare-var distance Int)
(declare-var throttle Int)


(constraint (= (inv distance throttle) (and (>= distance 1) (>= 1 (- distance throttle)) (not (>= distance throttle)))))

(check-synth)