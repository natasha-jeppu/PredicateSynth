(set-logic LIA)
(declare-datatypes ((prev_s_t 0))
	(((NORMAL) (RTN_UNACK) (UNACK) (s_ACK) )))
(synth-fun inv ((prev_s prev_s_t)) Bool)

(declare-var prev_s prev_s_t)


(constraint (= (inv prev_s) (and (not (= UNACK prev_s)) (= RTN_UNACK prev_s))))

(check-synth)