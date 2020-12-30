(set-logic LIA)
(synth-fun inv ((distance Int) ) Bool)

(declare-var distance Int)


(constraint (= (inv distance) (and (>= 7 distance) (not (= 1 (- 7 distance))))))

(check-synth)