(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (>= 1 distance)) (>= 6 distance) (>= 5 distance))))

(check-synth)