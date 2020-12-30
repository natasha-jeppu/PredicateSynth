(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= 4 distance) (not (>= 1 distance)))))

(check-synth)