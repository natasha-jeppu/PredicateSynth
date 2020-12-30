(set-logic LIA)
(synth-fun inv ((brake Int) (distance Int) ) Bool)

(declare-var brake Int)
(declare-var distance Int)


(constraint (= (inv brake distance) (and (not (= brake distance)) (not (>= brake distance)))))

(check-synth)