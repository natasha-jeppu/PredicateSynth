(set-logic LIA)
(synth-fun inv ((speed Int) (ignition Bool) ) Bool)

(declare-var speed Int)
(declare-var ignition Bool)


(constraint (= (inv speed ignition) (and (not (and ignition (= 0 speed))) (not (= 0 speed)))))

(check-synth)