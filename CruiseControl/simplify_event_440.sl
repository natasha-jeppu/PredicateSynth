(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= distance 2) (not (= 1 (- distance 7))))))

(check-synth)