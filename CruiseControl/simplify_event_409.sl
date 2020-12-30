(set-logic LIA)
(synth-fun inv ((brake Int) ) Bool)

(declare-var brake Int)


(constraint (= (inv brake) (and (>= brake 2) (not (= 2 brake)))))

(check-synth)