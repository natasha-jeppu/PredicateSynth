(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= distance 1) (not (>= 2 (- 10 distance))))))

(check-synth)