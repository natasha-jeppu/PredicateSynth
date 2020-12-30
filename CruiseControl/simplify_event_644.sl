(set-logic LIA)
(synth-fun inv ((brake Int) (time Int) ) Bool)

(declare-var brake Int)
(declare-var time Int)


(constraint (= (inv brake time) (and (not (= 546 (* 2 (- time 2)))) (not (>= time (* 2 473))) (not (>= (* 473 brake) time)))))

(check-synth)