(set-logic LIA)
(declare-datatypes ((cmd_t 0))
	(((ADD) (NO_CMD) (REMOVE) (RESET) (UNSHEL) (UNSUPR) (c_ACK) (c_SHEL) (c_SUPR) )))
(synth-fun inv ((cmd cmd_t)) Bool)

(declare-var cmd cmd_t)


(constraint (= (inv cmd) (and (not (= NO_CMD cmd)) (not (= c_ACK cmd)) (= c_SUPR cmd))))

(check-synth)