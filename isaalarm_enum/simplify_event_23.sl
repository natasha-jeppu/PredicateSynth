(set-logic LIA)
(synth-fun inv ((inp Int) (high_thresh Int) (low_thresh Int) ) Bool)

(declare-var inp Int)
(declare-var high_thresh Int)
(declare-var low_thresh Int)


(constraint (= (inv inp high_thresh low_thresh) (and (not (>= inp high_thresh)) (>= inp low_thresh))))

(check-synth)