(set-logic LIA)
(synth-fun inv ((distance Int) (throttle Int) ) Bool)

(declare-var distance Int)
(declare-var throttle Int)


(constraint (= (inv distance throttle) (and (>= throttle distance) (not (>= 0 throttle)))))

(check-synth)