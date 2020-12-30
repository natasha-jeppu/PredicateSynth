(set-logic LIA)
(declare-datatypes ((cmd_t 0))
	(((ADD) (NO_CMD) (REMOVE) (RESET) (UNSHEL) (UNSUPR) (c_ACK) (c_SHEL) (c_SUPR) )))

(synth-fun next ((snooze_timer Int) (cmd cmd_t)) Int
	((Start Int) (Var Int) (EnumVar0 cmd_t) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 2
			 snooze_timer
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

	(StartBool Bool (
					( = EnumVar0 EnumVar0)
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 c_SHEL ) 6))
(constraint (= (next 0 c_SHEL ) 6))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 c_SHEL ) 6))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 REMOVE ) 2))
(constraint (= (next 0 REMOVE ) 2))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 REMOVE ) 2))
(constraint (= (next 0 c_SHEL ) 6))
(constraint (= (next 0 REMOVE ) 2))
(constraint (= (next 0 c_SHEL ) 6))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 c_SUPR ) 1))
(constraint (= (next 0 c_SUPR ) 1))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 c_SUPR ) 1))
(constraint (= (next 0 REMOVE ) 2))
(constraint (= (next 0 c_SUPR ) 1))
(constraint (= (next 0 c_SHEL ) 6))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 RESET ) 0))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 UNSUPR ) 3))
(constraint (= (next 1 ADD ) 3))
(constraint (= (next 2 UNSHEL ) 4))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 c_ACK ) 3))
(constraint (= (next 2 NO_CMD ) 4))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 c_SHEL ) 6))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 REMOVE ) 2))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 c_SUPR ) 1))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 RESET ) 0))
(constraint (= (next 0 c_SHEL ) 6))
(constraint (= (next 0 c_SUPR ) 1))
(constraint (= (next 0 NO_CMD ) 3))
(constraint (= (next 1 NO_CMD ) 3))
(constraint (= (next 2 NO_CMD ) 4))

(check-synth)
