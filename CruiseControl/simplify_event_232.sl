(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (>= 2 distance)) (not (= 12 distance)))))

(check-synth)