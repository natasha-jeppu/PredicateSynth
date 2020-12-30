(set-logic LIA)
(synth-fun inv ((inp Int) (high_thresh Int) (low_thresh Int) ) Bool)

(declare-var inp Int)
(declare-var high_thresh Int)
(declare-var low_thresh Int)


(constraint (= (inv inp high_thresh low_thresh) (and (>= inp low_thresh) (>= inp high_thresh) (= inp high_thresh))))

(check-synth)