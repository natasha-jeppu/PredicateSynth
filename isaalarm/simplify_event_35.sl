(set-logic LIA)
(declare-datatypes ((prev_out.prev_s_t 0))
	(((NORMAL) (RTN_UNACK) (UNACK) (s_ACK) )))
(synth-fun inv ((prev_out.prev_s prev_out.prev_s_t)) Bool)

(declare-var prev_out.prev_s prev_out.prev_s_t)


(constraint (= (inv prev_out.prev_s) (and (not (= prev_out.prev_s NORMAL)) (= prev_out.prev_s RTN_UNACK))))

(check-synth)