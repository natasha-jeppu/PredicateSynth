(set-logic LIA)
(declare-datatypes ((cmd_t 0))
	(((ADD) (NO_CMD) (REMOVE) (RESET) (UNSHEL) (UNSUPR) (c_ACK) (c_SHEL) (c_SUPR) )))

(synth-fun next ((inp Int) (cmd cmd_t)(high_thresh Int) (low_thresh Int) ) Int
	((Start Int) (Var Int) (EnumVar0 cmd_t) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 2
			 inp
			 high_thresh
			 low_thresh
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

(constraint (= (next 22 NO_CMD 100 20 ) 0))
(constraint (= (next 23 NO_CMD 100 20 ) 0))
(constraint (= (next 24 NO_CMD 100 20 ) 0))
(constraint (= (next 25 NO_CMD 100 20 ) 0))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 27 NO_CMD 100 20 ) 0))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 44 c_SHEL 100 20 ) 6))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 26 NO_CMD 100 20 ) 0))
(constraint (= (next 27 c_SHEL 100 20 ) 6))
(constraint (= (next 30 c_SHEL 100 20 ) 6))
(constraint (= (next 32 REMOVE 100 20 ) 2))
(constraint (= (next 34 NO_CMD 100 20 ) 0))
(constraint (= (next 35 c_SHEL 100 20 ) 6))
(constraint (= (next 37 NO_CMD 100 20 ) 0))
(constraint (= (next 38 REMOVE 100 20 ) 2))
(constraint (= (next 42 c_SHEL 100 20 ) 6))
(constraint (= (next 44 REMOVE 100 20 ) 2))
(constraint (= (next 46 REMOVE 100 20 ) 2))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 26 c_SUPR 100 20 ) 1))
(constraint (= (next 28 NO_CMD 100 20 ) 0))
(constraint (= (next 29 NO_CMD 100 20 ) 0))
(constraint (= (next 30 c_SUPR 100 20 ) 1))
(constraint (= (next 34 c_SHEL 100 20 ) 6))
(constraint (= (next 36 c_SUPR 100 20 ) 1))
(constraint (= (next 38 REMOVE 100 20 ) 2))
(constraint (= (next 40 c_SUPR 100 20 ) 1))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 26 c_SHEL 100 20 ) 6))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 26 REMOVE 100 20 ) 2))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 26 c_SUPR 100 20 ) 1))
(constraint (= (next 28 c_SHEL 100 20 ) 6))
(constraint (= (next 101 NO_CMD 100 20 ) 4))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 161 NO_CMD 100 20 ) 4))
(constraint (= (next 25 RESET 100 20 ) 0))
(constraint (= (next 26 UNSUPR 100 20 ) 0))
(constraint (= (next 27 ADD 100 20 ) 0))
(constraint (= (next 28 UNSHEL 100 20 ) 0))
(constraint (= (next 29 c_ACK 100 20 ) 0))
(constraint (= (next 30 NO_CMD 100 20 ) 0))
(constraint (= (next 101 NO_CMD 100 20 ) 4))
(constraint (= (next 34 c_SHEL 100 20 ) 6))
(constraint (= (next 101 NO_CMD 100 20 ) 4))
(constraint (= (next 24 c_SHEL 100 20 ) 6))
(constraint (= (next 101 NO_CMD 100 20 ) 4))
(constraint (= (next 24 REMOVE 100 20 ) 2))
(constraint (= (next 102 NO_CMD 100 20 ) 4))
(constraint (= (next 25 c_SUPR 100 20 ) 1))
(constraint (= (next 27 NO_CMD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 5 NO_CMD 100 20 ) 4))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 15 NO_CMD 100 20 ) 4))
(constraint (= (next 25 NO_CMD 100 20 ) 0))
(constraint (= (next 10 c_ACK 100 20 ) 4))
(constraint (= (next 10 c_SHEL 100 20 ) 4))
(constraint (= (next 10 UNSHEL 100 20 ) 4))
(constraint (= (next 101 REMOVE 100 20 ) 4))
(constraint (= (next 101 REMOVE 100 20 ) 4))
(constraint (= (next 10 ADD 100 20 ) 4))
(constraint (= (next 10 c_SUPR 100 20 ) 4))
(constraint (= (next 10 UNSUPR 100 20 ) 4))
(constraint (= (next 10 RESET 100 20 ) 4))
(constraint (= (next 101 c_ACK 100 20 ) 4))
(constraint (= (next 101 c_SHEL 100 20 ) 4))
(constraint (= (next 101 UNSHEL 100 20 ) 4))
(constraint (= (next 101 REMOVE 100 20 ) 4))
(constraint (= (next 101 ADD 100 20 ) 4))
(constraint (= (next 101 c_SUPR 100 20 ) 4))
(constraint (= (next 101 UNSUPR 100 20 ) 4))
(constraint (= (next 101 RESET 100 20 ) 4))
(constraint (= (next 10 REMOVE 100 20 ) 4))
(constraint (= (next 26 NO_CMD 100 20 ) 0))
(constraint (= (next 27 NO_CMD 100 20 ) 0))
(constraint (= (next 28 c_SUPR 100 20 ) 1))
(constraint (= (next 30 c_SUPR 100 20 ) 1))
(constraint (= (next 32 NO_CMD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))

(check-synth)
