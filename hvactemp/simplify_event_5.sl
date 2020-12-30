(set-logic LIA)
(synth-fun inv ((temp Int) (rangeLow Int) (desiredTemperature Int) (allowedError Int) ) Bool)

(declare-var temp Int)
(declare-var rangeLow Int)
(declare-var desiredTemperature Int)
(declare-var allowedError Int)


(constraint (= (inv temp rangeLow desiredTemperature allowedError) (and (not (>= temp desiredTemperature)) (>= temp rangeLow) (= temp (- desiredTemperature allowedError)))))

(check-synth)