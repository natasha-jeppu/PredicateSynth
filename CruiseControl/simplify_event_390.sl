(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= 20 distance) (>= 2 distance) (>= 1 distance) (= 0 distance))))

(check-synth)