(set-logic LIA)
(synth-fun inv ((distance Int) (throttle Int) ) Bool)

(declare-var distance Int)
(declare-var throttle Int)


(constraint (= (inv distance throttle) (and (>= 20 distance) (not (>= 2 distance)) (not (= distance throttle)))))

(check-synth)