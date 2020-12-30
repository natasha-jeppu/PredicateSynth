(set-logic LIA)
(synth-fun inv ((brake Int) (distance Int) (speed Int) ) Bool)

(declare-var brake Int)
(declare-var distance Int)
(declare-var speed Int)


(constraint (= (inv brake distance speed) (and (not (>= 1 (+ distance speed))) (= brake distance))))

(check-synth)