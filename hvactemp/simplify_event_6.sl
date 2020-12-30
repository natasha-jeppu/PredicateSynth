(set-logic LIA)
(synth-fun inv ((temp Int) (desiredTemperature Int) (allowedError Int) ) Bool)

(declare-var temp Int)
(declare-var desiredTemperature Int)
(declare-var allowedError Int)


(constraint (= (inv temp desiredTemperature allowedError) (and (not (>= temp desiredTemperature)) (= temp (- desiredTemperature allowedError)))))

(check-synth)