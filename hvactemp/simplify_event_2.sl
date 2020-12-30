(set-logic LIA)
(synth-fun inv ((temp Int) (desiredTemperature Int) ) Bool)

(declare-var temp Int)
(declare-var desiredTemperature Int)


(constraint (= (inv temp desiredTemperature) (and (>= temp desiredTemperature) (not (= temp desiredTemperature)))))

(check-synth)