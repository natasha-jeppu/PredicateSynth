(set-logic LIA)
(synth-fun inv ((brake Int) ) Bool)

(declare-var brake Int)


(constraint (= (inv brake) (and (>= 3 brake) (not (>= brake 2)))))

(check-synth)