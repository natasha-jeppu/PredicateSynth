(set-logic LIA)
(declare-datatypes ((inp.cmd_t 0))
	(((ADD) (NO_CMD) (REMOVE) (RESET) (UNSHEL) (UNSUPR) (c_ACK) (c_SHEL) (c_SUPR) )))
(synth-fun inv ((inp.cmd inp.cmd_t)) Bool)

(declare-var inp.cmd inp.cmd_t)


(constraint (= (inv inp.cmd) (and (not (= inp.cmd REMOVE)) (not (= inp.cmd c_SUPR)) (not (= inp.cmd c_SHEL)))))

(check-synth)