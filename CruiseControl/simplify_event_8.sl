(set-logic LIA)
(synth-fun inv ((brake Int) (speed Int) ) Bool)

(declare-var brake Int)
(declare-var speed Int)


(constraint (= (inv brake speed) (and (not (= brake speed)) (not (= 1 (- speed 5))))))

(check-synth)