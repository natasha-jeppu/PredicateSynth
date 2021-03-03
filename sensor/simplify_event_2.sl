(set-logic LIA)
(synth-fun inv ((pos Int) (gps_pos Int) ) Bool)

(declare-var pos Int)
(declare-var gps_pos Int)


(constraint (= (inv pos gps_pos) (and (>= pos gps_pos) (> pos gps_pos))))

(check-synth)