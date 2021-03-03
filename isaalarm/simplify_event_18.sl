(set-logic LIA)
(synth-fun inv ((inp.val Int) (high_thresh Int) (low_thresh Int) ) Bool)

(declare-var inp.val Int)
(declare-var high_thresh Int)
(declare-var low_thresh Int)


(constraint (= (inv inp.val high_thresh low_thresh) (and (not (> inp.val high_thresh)) (>= inp.val low_thresh))))

(check-synth)