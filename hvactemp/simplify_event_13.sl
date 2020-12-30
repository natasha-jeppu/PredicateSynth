(set-logic LIA)
(synth-fun inv ((temp Int) (rangeLow Int) (desiredTemperature Int) ) Bool)

(declare-var temp Int)
(declare-var rangeLow Int)
(declare-var desiredTemperature Int)


(constraint (= (inv temp rangeLow desiredTemperature) (and (not (>= temp desiredTemperature)) (not (>= temp rangeLow)))))

(check-synth)