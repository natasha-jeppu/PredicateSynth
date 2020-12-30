(set-logic LIA)
(synth-fun inv ((brake Int) (distance Int) (speed Int) ) Bool)

(declare-var brake Int)
(declare-var distance Int)
(declare-var speed Int)


(constraint (= (inv brake distance speed) (and (>= 1 (+ distance speed)) (= 2 (+ brake speed)))))

(check-synth)