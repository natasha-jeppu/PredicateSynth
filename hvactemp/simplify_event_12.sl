(set-logic LIA)
(synth-fun inv ((prev_inp.temp Int) (rangeLow Int) (desiredTemperature Int) (allowedError Int) ) Bool)

(declare-var prev_inp.temp Int)
(declare-var rangeLow Int)
(declare-var desiredTemperature Int)
(declare-var allowedError Int)


(constraint (= (inv prev_inp.temp rangeLow desiredTemperature allowedError) (and (not (> rangeLow prev_inp.temp)) (not (>= prev_inp.temp (- desiredTemperature allowedError))))))

(check-synth)