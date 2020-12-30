(set-logic LIA)
(synth-fun inv ((distance Int) (throttle Int) ) Bool)

(declare-var distance Int)
(declare-var throttle Int)


(constraint (= (inv distance throttle) (and (not (>= 1 (- throttle distance))) (not (>= throttle 6)))))

(check-synth)