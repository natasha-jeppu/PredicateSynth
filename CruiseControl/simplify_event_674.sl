(set-logic LIA)
(synth-fun inv ((brake Int) ) Bool)

(declare-var brake Int)


(constraint (= (inv brake) (and (not (= 1 brake)) (>= 1 brake))))

(check-synth)