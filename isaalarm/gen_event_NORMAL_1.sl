(set-logic LIA)
(declare-datatypes ((inp.cmd_t 0))
	(((ADD) (NO_CMD) (REMOVE) (RESET) (UNSHEL) (UNSUPR) (c_ACK) (c_SHEL) (c_SUPR) )))
(synth-fun next ((inp.val Int) (inp.cmd inp.cmd_t)(high_thresh Int) (low_thresh Int) ) Int
	((Start Int)  (Var Int) (EnumVar0 inp.cmd_t) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 inp.val
			 high_thresh
			 low_thresh
			 	(+ Var Var)						
			 	(- Var Var)						
			 	(* Var Var)))

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

(constraint (= (next (- 2147483627) c_SUPR 100 20 ) 4))
(constraint (= (next 262161 c_SUPR 100 20 ) 4))
(constraint (= (next 262161 c_SUPR 100 20 ) 4))
(constraint (= (next 262161 c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147221487) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147221487) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147221487) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147221487) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) NO_CMD 100 20 ) 4))
(constraint (= (next (- 2147483599) NO_CMD 100 20 ) 4))
(constraint (= (next 49 REMOVE 100 20 ) 2))
(constraint (= (next 49 c_SUPR 100 20 ) 1))
(constraint (= (next 49 c_SUPR 100 20 ) 1))
(constraint (= (next 49 c_SUPR 100 20 ) 1))
(constraint (= (next (- 2147483546) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next 49 c_SUPR 100 20 ) 1))
(constraint (= (next 22 REMOVE 100 20 ) 2))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next 85 c_SHEL 100 20 ) 6))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next (- 2147483599) c_SUPR 100 20 ) 4))
(constraint (= (next 49 c_SHEL 100 20 ) 6))
(constraint (= (next 49 c_SUPR 100 20 ) 1))
(constraint (= (next 4 REMOVE 100 20 ) 4))
(constraint (= (next 4194325 c_SHEL 100 20 ) 4))
(constraint (= (next 102 UNSUPR 100 20 ) 4))
(constraint (= (next 4194325 c_SHEL 100 20 ) 4))
(constraint (= (next 20 ADD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 c_SHEL 100 20 ) 4))
(constraint (= (next 102 REMOVE 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 268435477 c_SUPR 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 24 c_ACK 100 20 ) 0))
(constraint (= (next 21 UNSHEL 100 20 ) 0))
(constraint (= (next 2147483546 c_ACK 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next (- 1879048171) ADD 100 20 ) 4))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 27 NO_CMD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 20 NO_CMD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 20 REMOVE 100 20 ) 2))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 20 c_SUPR 100 20 ) 1))
(constraint (= (next 536870933 RESET 100 20 ) 4))
(constraint (= (next 536870933 RESET 100 20 ) 4))
(constraint (= (next 536870933 RESET 100 20 ) 4))
(constraint (= (next 536870933 RESET 100 20 ) 4))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 2147483546 UNSUPR 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 16 c_SHEL 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 0 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 101 UNSUPR 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 102 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next (- 2147483546) ADD 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next (- 2147483546) RESET 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 102 c_ACK 100 20 ) 4))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 NO_CMD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 RESET 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_ACK 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 4194325 UNSHEL 100 20 ) 4))
(constraint (= (next 21 UNSHEL 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 RESET 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 c_ACK 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 UNSHEL 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 102 REMOVE 100 20 ) 4))
(constraint (= (next 1073741846 c_SUPR 100 20 ) 4))
(constraint (= (next 536870933 UNSUPR 100 20 ) 4))
(constraint (= (next 1073741845 UNSUPR 100 20 ) 4))
(constraint (= (next 536870933 c_SUPR 100 20 ) 4))
(constraint (= (next 102 NO_CMD 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 4194304 c_SUPR 100 20 ) 4))
(constraint (= (next 536870933 ADD 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 RESET 100 20 ) 0))
(constraint (= (next 2147482624 UNSUPR 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 24 c_SHEL 100 20 ) 6))
(constraint (= (next 268435477 UNSHEL 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 RESET 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 UNSHEL 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 c_ACK 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 21 NO_CMD 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 38 c_SUPR 100 20 ) 1))
(constraint (= (next 2147467243 c_ACK 100 20 ) 4))
(constraint (= (next 38 c_SUPR 100 20 ) 1))
(constraint (= (next 2147467243 c_ACK 100 20 ) 4))
(constraint (= (next 38 c_SUPR 100 20 ) 1))
(constraint (= (next 2147467243 c_ACK 100 20 ) 4))
(constraint (= (next 38 c_SUPR 100 20 ) 1))
(constraint (= (next 2147467243 c_ACK 100 20 ) 4))
(constraint (= (next 102 c_SHEL 100 20 ) 4))
(constraint (= (next 102 c_SHEL 100 20 ) 4))
(constraint (= (next 102 c_SHEL 100 20 ) 4))
(constraint (= (next 102 c_SHEL 100 20 ) 4))
(constraint (= (next 4194304 c_SUPR 100 20 ) 4))
(constraint (= (next 4194304 c_SUPR 100 20 ) 4))
(constraint (= (next 4194304 c_SUPR 100 20 ) 4))
(constraint (= (next 4194304 c_SUPR 100 20 ) 4))
(constraint (= (next 102 c_ACK 100 20 ) 4))
(constraint (= (next 102 c_ACK 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 268435477 NO_CMD 100 20 ) 4))
(constraint (= (next 16405 c_SUPR 100 20 ) 4))
(constraint (= (next 16405 c_SUPR 100 20 ) 4))
(constraint (= (next 16405 c_SUPR 100 20 ) 4))
(constraint (= (next 102 REMOVE 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 102 REMOVE 100 20 ) 4))
(constraint (= (next 38 REMOVE 100 20 ) 2))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 2147483627 c_SUPR 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 2147483627 c_SUPR 100 20 ) 4))
(constraint (= (next 2147483627 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 32768 UNSUPR 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 32768 UNSUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 32768 UNSUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 32768 UNSUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 524309 c_SUPR 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 RESET 100 20 ) 0))
(constraint (= (next 2147482624 UNSUPR 100 20 ) 4))
(constraint (= (next 128 ADD 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 2147483627 c_SUPR 100 20 ) 4))
(constraint (= (next 2147483627 c_SUPR 100 20 ) 4))
(constraint (= (next 2147483627 c_SUPR 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 2147483627 c_SUPR 100 20 ) 4))
(constraint (= (next 4194325 ADD 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 2147483616 REMOVE 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 2147483616 REMOVE 100 20 ) 4))
(constraint (= (next 2147483616 REMOVE 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 102 ADD 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 2147483520 UNSHEL 100 20 ) 4))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 4192 UNSHEL 100 20 ) 4))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 4192 UNSHEL 100 20 ) 4))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 4192 UNSHEL 100 20 ) 4))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 4192 UNSHEL 100 20 ) 4))
(constraint (= (next 21 ADD 100 20 ) 0))
(constraint (= (next 4192 UNSHEL 100 20 ) 4))
(constraint (= (next 21 c_SHEL 100 20 ) 6))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 8388629 UNSHEL 100 20 ) 4))
(constraint (= (next 21 UNSUPR 100 20 ) 0))
(constraint (= (next 21 REMOVE 100 20 ) 2))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 64 UNSUPR 100 20 ) 0))
(constraint (= (next 21 c_SUPR 100 20 ) 1))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 536870933 ADD 100 20 ) 4))
(constraint (= (next 128 ADD 100 20 ) 4))
(constraint (= (next 2147483584 c_SHEL 100 20 ) 4))
(constraint (= (next 536870933 RESET 100 20 ) 4))
(constraint (= (next 536870933 c_SUPR 100 20 ) 4))
(constraint (= (next 536870933 RESET 100 20 ) 4))
(constraint (= (next 536870933 UNSUPR 100 20 ) 4))

(check-synth)
