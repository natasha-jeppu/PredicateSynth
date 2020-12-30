(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 631 (- time 1094)) (not (>= time 631)))))

(check-synth)