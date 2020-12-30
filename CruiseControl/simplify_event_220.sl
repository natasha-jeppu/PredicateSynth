(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (>= distance 7)) (not (= 0 distance)))))

(check-synth)