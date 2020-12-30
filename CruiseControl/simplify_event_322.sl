(set-logic LIA)
(synth-fun inv ((distance Int) (speed Int) ) Bool)

(declare-var distance Int)
(declare-var speed Int)


(constraint (= (inv distance speed) (and (>= 12 (- speed distance)) (>= speed 12))))

(check-synth)