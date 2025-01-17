(set-logic LIA)
(declare-datatypes ((inp.cmd_t 0))
	(((ADD) (NO_CMD) (REMOVE) (RESET) (UNSHEL) (UNSUPR) (c_ACK) (c_SHEL) (c_SUPR) )))
(declare-datatypes ((prev_out.prev_s_t 0))
	(((NORMAL) (RTN_UNACK) (UNACK) (s_ACK) )))
(synth-fun next ((inp.cmd inp.cmd_t)(prev_out.prev_s prev_out.prev_s_t)) Int
	((Start Int) (EnumVar0 inp.cmd_t) (EnumVar1 prev_out.prev_s_t) (StartBool Bool))
	((Start Int (
				 0
				 2
				 3
				 4
				 5
				 (ite StartBool Start Start)))

(EnumVar0 inp.cmd_t (
	inp.cmd
ADD
NO_CMD
REMOVE
RESET
UNSHEL
UNSUPR
c_ACK
c_SHEL
c_SUPR
))

(EnumVar1 prev_out.prev_s_t (
	prev_out.prev_s
NORMAL
RTN_UNACK
UNACK
s_ACK
))

	 (StartBool Bool (
	 ( = EnumVar0 EnumVar0)
	 ( = EnumVar1 EnumVar1)
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next c_ACK s_ACK ) 2))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next RESET NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next c_SUPR NORMAL ) 2))
(constraint (= (next c_SUPR NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next c_SUPR UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next c_SUPR UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next c_SUPR UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next RESET UNACK ) 2))
(constraint (= (next UNSHEL UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next RESET UNACK ) 2))
(constraint (= (next UNSHEL UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next UNSHEL UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next REMOVE UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next c_SHEL RTN_UNACK ) 2))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next c_SHEL NORMAL ) 2))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next c_ACK RTN_UNACK ) 2))
(constraint (= (next REMOVE RTN_UNACK ) 2))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next c_ACK RTN_UNACK ) 2))
(constraint (= (next REMOVE RTN_UNACK ) 2))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next ADD s_ACK ) 3))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next c_SHEL RTN_UNACK ) 2))
(constraint (= (next ADD RTN_UNACK ) 5))
(constraint (= (next c_SHEL UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next c_SHEL NORMAL ) 2))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD RTN_UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next c_SHEL NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next NO_CMD NORMAL ) 2))
(constraint (= (next ADD NORMAL ) 0))
(constraint (= (next c_SHEL UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next NO_CMD UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next REMOVE UNACK ) 2))
(constraint (= (next ADD UNACK ) 4))
(constraint (= (next c_SUPR s_ACK ) 2))
(constraint (= (next NO_CMD s_ACK ) 2))
(constraint (= (next ADD s_ACK ) 3))

(check-synth)
