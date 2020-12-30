(set-logic LIA)
(synth-fun inv ((throttle Int) ) Bool)

(declare-var throttle Int)


(constraint (= (inv throttle) (and (not (= 5 throttle)) (not (>= 5 throttle)))))

(check-synth)