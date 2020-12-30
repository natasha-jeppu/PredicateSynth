(set-logic LIA)
(synth-fun inv ((throttle Int) ) Bool)

(declare-var throttle Int)


(constraint (= (inv throttle) (and (not (>= 0 throttle)) (not (>= 7 throttle)))))

(check-synth)