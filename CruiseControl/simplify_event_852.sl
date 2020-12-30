(set-logic LIA)
(synth-fun inv ((time Int) ) Bool)

(declare-var time Int)


(constraint (= (inv time) (and (>= 595 (- time 935)) (not (>= 595 (+ 12 time))) (not (>= 595 time)))))

(check-synth)