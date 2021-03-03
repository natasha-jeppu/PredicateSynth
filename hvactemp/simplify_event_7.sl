(set-logic LIA)
(synth-fun inv ((prev_inp.temp Int) (rangeHigh Int) (desiredTemperature Int) (allowedError Int) ) Bool)

(declare-var prev_inp.temp Int)
(declare-var rangeHigh Int)
(declare-var desiredTemperature Int)
(declare-var allowedError Int)


(constraint (= (inv prev_inp.temp rangeHigh desiredTemperature allowedError) (and (>= rangeHigh prev_inp.temp) (>= prev_inp.temp (+ desiredTemperature allowedError)))))

(check-synth)