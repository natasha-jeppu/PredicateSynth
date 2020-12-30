(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= 6 distance) (not (= 0 distance)))))

(check-synth)