(set-logic LIA)
(declare-datatypes ((cmd_t 0))
	(((ACK) (DND) (NO_CMD) (RESET) )))
(synth-fun next ((cmd cmd_t)(unack_time Int) (unack_timeout Int) ) Int
	((Start Int)  (Var Int) (EnumVar0 cmd_t) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 unack_time
			 unack_timeout
			 	(+ Var Var)						
			 	(- Var Var)						
			 	(* Var Var)))

(EnumVar0 cmd_t (
	cmd
ACK
DND
NO_CMD
RESET
))

	 (StartBool Bool (
	 ( = EnumVar0 EnumVar0)
					 (> Var Var)						
					 (>= Var Var)						
					 (< Var Var)						
					 (<= Var Var)						
					 (= Var Var)						
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next NO_CMD 1 5 ) 1))
(constraint (= (next DND 2 5 ) 1))
(constraint (= (next ACK 3 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next NO_CMD 1 5 ) 1))
(constraint (= (next DND 2 5 ) 1))
(constraint (= (next ACK 3 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next DND 1 5 ) 1))
(constraint (= (next ACK 2 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next DND 1 5 ) 1))
(constraint (= (next ACK 2 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next DND 1 5 ) 1))
(constraint (= (next ACK 2 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next DND 1 5 ) 1))
(constraint (= (next ACK 2 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next DND 1 5 ) 1))
(constraint (= (next ACK 2 5 ) 2))
(constraint (= (next RESET 0 5 ) 0))
(constraint (= (next DND 0 5 ) 1))
(constraint (= (next DND 1 5 ) 1))
(constraint (= (next NO_CMD 2 5 ) 1))
(constraint (= (next DND 3 5 ) 1))
(constraint (= (next DND 4 5 ) 1))
(constraint (= (next NO_CMD 5 5 ) 1))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next RESET 1 5 ) 0))
(constraint (= (next RESET 0 5 ) 0))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next RESET 0 5 ) 0))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next NO_CMD 0 5 ) 1))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next RESET 0 5 ) 0))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next ACK 0 5 ) 2))
(constraint (= (next ACK 0 5 ) 2))

(check-synth)
