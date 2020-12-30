(set-logic LIA)
(synth-fun inv ((methane Int) ) Bool)

(declare-var methane Int)


(constraint (= (inv methane) (and (>= 1 (- methane 602)) (not (>= methane 602)))))

(check-synth)