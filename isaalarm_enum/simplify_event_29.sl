(set-logic LIA)
(synth-fun inv ((inp Int) (high_thresh Int) ) Bool)

(declare-var inp Int)
(declare-var high_thresh Int)


(constraint (= (inv inp high_thresh) (and (>= inp high_thresh) (not (= inp high_thresh)))))

(check-synth)