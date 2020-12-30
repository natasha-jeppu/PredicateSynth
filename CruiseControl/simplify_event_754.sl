(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (= 0 distance)) (not (= 6 distance)) (>= 2 distance))))

(check-synth)