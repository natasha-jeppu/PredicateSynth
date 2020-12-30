(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (= 0 distance)) (not (= 3 distance)) (>= 5 distance))))

(check-synth)