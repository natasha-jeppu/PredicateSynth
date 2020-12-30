(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (not (>= 425 time)) (>= 425 (- time 622)) (not (>= time 622)))))

(check-synth)