(set-logic LIA)
(synth-fun inv ((throttle Int) (time Int) ) Bool)

(declare-var throttle Int)
(declare-var time Int)


(constraint (= (inv throttle time) (and (>= 493 (* 2 time)) (not (>= 440 (* throttle time))))))

(check-synth)