(set-logic LIA)
(synth-fun inv ((prev_s Int) ) Bool)

(declare-var prev_s Int)


(constraint (= (inv prev_s) (and (not (= 4 prev_s)) (>= 4 prev_s) (not (= 3 prev_s)))))

(check-synth)