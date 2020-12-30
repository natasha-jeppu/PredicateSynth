(set-logic LIA)
(synth-fun inv ((brake Int) ) Bool)

(declare-var brake Int)


(constraint (= (inv brake) (and (>= 1 brake) (not (= 0 brake)))))

(check-synth)