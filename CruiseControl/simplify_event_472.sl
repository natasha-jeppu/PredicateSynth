(set-logic LIA)
(synth-fun inv ((brake Int) (distance Int) ) Bool)

(declare-var brake Int)
(declare-var distance Int)


(constraint (= (inv brake distance) (and (>= 17 distance) (not (>= 15 (- distance brake))))))

(check-synth)