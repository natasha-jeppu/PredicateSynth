(set-logic LIA)
(declare-datatypes ((cmd_t 0))
	(((ACK) (DND) (NO_CMD) (RESET) )))
(synth-fun next ((cmd cmd_t)(snooze_time Int) (snooze_timeout Int) ) Int
	((Start Int)  (Var Int) (EnumVar0 cmd_t) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 snooze_time
			 snooze_timeout
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

(constraint (= (next ACK 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next DND 2 2 ) 2))
(constraint (= (next ACK 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next DND 2 2 ) 2))
(constraint (= (next ACK 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next DND 2 2 ) 2))
(constraint (= (next ACK 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next DND 2 2 ) 2))
(constraint (= (next NO_CMD 3 2 ) 1))
(constraint (= (next ACK 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next DND 2 2 ) 2))
(constraint (= (next NO_CMD 3 2 ) 1))
(constraint (= (next DND 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next RESET 2 2 ) 0))
(constraint (= (next DND 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next RESET 2 2 ) 0))
(constraint (= (next RESET 0 2 ) 0))
(constraint (= (next NO_CMD 0 2 ) 2))
(constraint (= (next NO_CMD 1 2 ) 2))
(constraint (= (next ACK 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next ACK 2 2 ) 2))
(constraint (= (next DND 3 2 ) 1))
(constraint (= (next NO_CMD 0 2 ) 2))
(constraint (= (next NO_CMD 1 2 ) 2))
(constraint (= (next DND 2 2 ) 2))
(constraint (= (next NO_CMD 3 2 ) 1))
(constraint (= (next ACK 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next ACK 2 2 ) 2))
(constraint (= (next RESET 3 2 ) 1))
(constraint (= (next RESET 0 2 ) 0))
(constraint (= (next NO_CMD 0 2 ) 2))
(constraint (= (next NO_CMD 1 2 ) 2))
(constraint (= (next NO_CMD 2 2 ) 2))
(constraint (= (next DND 3 2 ) 1))
(constraint (= (next NO_CMD 0 2 ) 2))
(constraint (= (next ACK 1 2 ) 2))
(constraint (= (next NO_CMD 2 2 ) 2))
(constraint (= (next NO_CMD 3 2 ) 1))
(constraint (= (next RESET 0 2 ) 0))

(check-synth)
