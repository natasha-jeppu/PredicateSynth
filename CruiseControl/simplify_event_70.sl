(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (not (>= 1 distance)) (not (= 1 (- distance 2))))))

(check-synth)