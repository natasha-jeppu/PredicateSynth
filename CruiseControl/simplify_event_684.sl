(set-logic LIA)
(synth-fun inv ((distance Int) (speed Int) ) Bool)

(declare-var distance Int)
(declare-var speed Int)


(constraint (= (inv distance speed) (and (>= 2 (* distance speed)) (= 0 distance))))

(check-synth)