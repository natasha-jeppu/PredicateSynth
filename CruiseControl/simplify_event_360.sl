(set-logic LIA)
(synth-fun inv ((brake Int) (time Int) ) Bool)

(declare-var brake Int)
(declare-var time Int)


(constraint (= (inv brake time) (and (not (>= (* 1045 brake) time)) (>= 560 (* 2 (- time 1045))))))

(check-synth)