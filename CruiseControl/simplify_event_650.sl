(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time (+ 576 1007))) (not (>= 1007 time)) (>= time (* 2 576)) (>= 576 (+ 1007 (- 1007 time))))))

(check-synth)