(set-logic LIA)
(synth-fun inv ((temp Int) (rangeHigh Int) (desiredTemperature Int) (allowedError Int) ) Bool)

(declare-var temp Int)
(declare-var rangeHigh Int)
(declare-var desiredTemperature Int)
(declare-var allowedError Int)


(constraint (= (inv temp rangeHigh desiredTemperature allowedError) (and (>= temp (+ desiredTemperature allowedError)) (>= rangeHigh temp))))

(check-synth)