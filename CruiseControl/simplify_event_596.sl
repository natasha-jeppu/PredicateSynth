(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time 496)) (>= 496 (* 2 time)) (= 496 (- 725 time)))))

(check-synth)