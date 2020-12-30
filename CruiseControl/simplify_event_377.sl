(set-logic LIA)
(synth-fun inv ((brake Int) ) Bool)

(declare-var brake Int)


(constraint (= (inv brake) (and (not (>= 3 brake)) (not (= 1 (- brake 3))))))

(check-synth)