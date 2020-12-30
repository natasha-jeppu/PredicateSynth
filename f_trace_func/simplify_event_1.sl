(set-logic LIA)
(synth-fun inv ((ssm Int) (count_f Int) ) Bool)

(declare-var ssm Int)
(declare-var count_f Int)


(constraint (= (inv ssm count_f) (and (not (>= ssm (- count_f (+ ssm ssm)))) (= ssm (* ssm ssm)))))

(check-synth)