(set-logic LIA)
(synth-fun inv ((throttle Int) ) Bool)

(declare-var throttle Int)


(constraint (= (inv throttle) (and (>= 4 throttle) (>= 1 throttle))))

(check-synth)