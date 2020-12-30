(set-logic LIA)
(synth-fun inv ((distance Int) (speed Int) ) Bool)

(declare-var distance Int)
(declare-var speed Int)


(constraint (= (inv distance speed) (and (>= 12 (- speed distance)) (= 2 (- distance 3)))))

(check-synth)