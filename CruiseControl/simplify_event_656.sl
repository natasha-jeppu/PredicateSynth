(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (= 3 distance)) (= 7 distance))))

(check-synth)