(set-logic LIA)
(synth-fun inv ((brake Int) (speed Int) ) Bool)

(declare-var brake Int)
(declare-var speed Int)


(constraint (= (inv brake speed) (and (not (>= 1 (- 7 speed))) (= brake speed))))

(check-synth)