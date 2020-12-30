(set-logic LIA)
(synth-fun inv ((throttle Int) ) Bool)

(declare-var throttle Int)


(constraint (= (inv throttle) (and (not (>= 1 throttle)) (>= 2 throttle))))

(check-synth)