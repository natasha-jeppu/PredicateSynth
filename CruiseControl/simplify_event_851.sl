(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 595 (- time 935)) (>= 595 (+ 12 time)))))

(check-synth)