(set-logic LIA)
(declare-datatypes ((cmd_t 0))
	(((ADD) (NO_CMD) (REMOVE) (RESET) (UNSHEL) (UNSUPR) (c_ACK) (c_SHEL) (c_SUPR) )))

(declare-datatypes ((prev_s_t 0))
	(((NORMAL) (RTN_UNACK) (UNACK) (s_ACK) )))

(synth-fun next ((cmd cmd_t)(prev_s prev_s_t)) Int
	((Start Int) (Var Int) (EnumVar0 cmd_t) (EnumVar1 prev_s_t) (StartBool Bool))
	((Start Int (
				 0
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 2
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(EnumVar0 cmd_t (
					ADD
					NO_CMD
					REMOVE
					RESET
					UNSHEL
					UNSUPR
					c_ACK
					c_SHEL
					c_SUPR
					cmd))

	(EnumVar1 prev_s_t (
					NORMAL
					RTN_UNACK
					UNACK
					s_ACK
					prev_s))

	(StartBool Bool (
					( = EnumVar0 EnumVar0)
					( = EnumVar1 EnumVar1)
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next UNSUPR RTN_UNACK ) 5))
(constraint (= (next NO_CMD RTN_UNACK ) 1))
(constraint (= (next UNSUPR RTN_UNACK ) 5))
(constraint (= (next NO_CMD RTN_UNACK ) 1))
(constraint (= (next NO_CMD RTN_UNACK ) 1))
(constraint (= (next UNSUPR RTN_UNACK ) 5))
(constraint (= (next UNSUPR RTN_UNACK ) 5))
(constraint (= (next UNSUPR RTN_UNACK ) 5))
(constraint (= (next NO_CMD RTN_UNACK ) 1))
(constraint (= (next NO_CMD RTN_UNACK ) 1))
(constraint (= (next NO_CMD RTN_UNACK ) 1))
(constraint (= (next UNSUPR RTN_UNACK ) 5))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next NO_CMD NORMAL ) 1))
(constraint (= (next NO_CMD NORMAL ) 1))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next NO_CMD UNACK ) 1))
(constraint (= (next NO_CMD UNACK ) 1))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR s_ACK ) 3))
(constraint (= (next NO_CMD s_ACK ) 1))
(constraint (= (next NO_CMD s_ACK ) 1))
(constraint (= (next UNSUPR s_ACK ) 3))
(constraint (= (next UNSUPR s_ACK ) 3))
(constraint (= (next UNSUPR s_ACK ) 3))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next UNSUPR s_ACK ) 3))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next c_ACK UNACK ) 1))
(constraint (= (next c_SHEL UNACK ) 1))
(constraint (= (next UNSHEL UNACK ) 1))
(constraint (= (next REMOVE UNACK ) 1))
(constraint (= (next ADD UNACK ) 1))
(constraint (= (next c_SUPR UNACK ) 1))
(constraint (= (next RESET UNACK ) 1))
(constraint (= (next UNSUPR UNACK ) 4))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next UNSUPR NORMAL ) 0))
(constraint (= (next UNSUPR s_ACK ) 3))

(check-synth)
