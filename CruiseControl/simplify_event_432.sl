(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= 3 distance) (not (>= 2 distance)))))

(check-synth)