(set-logic LIA)
(synth-fun inv ((prev_s Int) ) Bool)

(declare-var prev_s Int)


(constraint (= (inv prev_s) (and (>= 3 prev_s) (= 3 prev_s))))

(check-synth)