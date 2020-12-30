(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (>= 6 distance)) (not (>= 8 distance)))))

(check-synth)