(set-logic LIA)
(synth-fun inv ((throttle Int) ) Bool)

(declare-var throttle Int)


(constraint (= (inv throttle) (and (not (>= 6 throttle)) (not (= 8 throttle)))))

(check-synth)