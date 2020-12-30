(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= time (+ 576 1007))) (>= 1007 time) (>= 576 (- 1007 time)))))

(check-synth)