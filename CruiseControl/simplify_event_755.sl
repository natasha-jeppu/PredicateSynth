(set-logic LIA)
(synth-fun inv ((throttle Int) ) Bool)

(declare-var throttle Int)


(constraint (= (inv throttle) (and (not (= 4 throttle)) (not (>= 4 throttle)))))

(check-synth)