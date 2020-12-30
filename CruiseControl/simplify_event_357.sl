(set-logic LIA)
(synth-fun inv ((brake Int) (time Int) ) Bool)

(declare-var brake Int)
(declare-var time Int)


(constraint (= (inv brake time) (and (>= (* 1045 brake) time) (>= 560 time))))

(check-synth)