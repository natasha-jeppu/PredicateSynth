(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= 12 distance) (>= 6 distance))))

(check-synth)