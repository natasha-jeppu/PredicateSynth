(set-logic LIA)
(synth-fun inv ((brake Int) (distance Int) ) Bool)

(declare-var brake Int)
(declare-var distance Int)


(constraint (= (inv brake distance) (and (>= 5 (* brake distance)) (not (= 0 distance)))))

(check-synth)