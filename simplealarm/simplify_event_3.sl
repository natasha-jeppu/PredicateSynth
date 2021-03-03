(set-logic LIA)
(declare-datatypes ((cmd_t 0))
	(((ACK) (DND) (NO_CMD) (RESET) )))
(synth-fun inv ((cmd cmd_t)) Bool)

(declare-var cmd cmd_t)


(constraint (= (inv cmd) (and (not (= cmd NO_CMD)) (not (= cmd DND)) (= cmd ACK))))

(check-synth)