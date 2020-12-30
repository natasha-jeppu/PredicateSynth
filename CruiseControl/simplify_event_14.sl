(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= distance 1) (not (= 2 (- distance 2))))))

(check-synth)