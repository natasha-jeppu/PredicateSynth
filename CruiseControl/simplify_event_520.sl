(set-logic LIA)
(synth-fun inv ((distance Int) (throttle Int) ) Bool)

(declare-var distance Int)
(declare-var throttle Int)


(constraint (= (inv distance throttle) (and (not (>= 6 distance)) (>= throttle distance) (not (= 1 (- distance 6))))))

(check-synth)