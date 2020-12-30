(set-logic LIA)
(synth-fun inv ((throttle Int) ) Bool)

(declare-var throttle Int)


(constraint (= (inv throttle) (and (>= 5 throttle) (not (= 0 throttle)))))

(check-synth)