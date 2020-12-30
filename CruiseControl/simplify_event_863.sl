(set-logic LIA)
(synth-fun inv ((brake Int) ) Bool)

(declare-var brake Int)


(constraint (= (inv brake) (and (not (= 0 brake)) (= 2 brake))))

(check-synth)