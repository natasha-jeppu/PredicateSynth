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
				 5
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

(constraint (= (next 25 NO_CMD 100 20 ) 5))
(constraint (= (next 26 NO_CMD 100 20 ) 5))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 NO_CMD 100 20 ) 5))
(constraint (= (next 26 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_SHEL 100 20 ) 6))
(constraint (= (next 28 c_SHEL 100 20 ) 6))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 25 NO_CMD 100 20 ) 5))
(constraint (= (next 26 c_SHEL 100 20 ) 6))
(constraint (= (next 30 NO_CMD 100 20 ) 5))
(constraint (= (next 31 c_SHEL 100 20 ) 6))
(constraint (= (next 33 c_ACK 100 20 ) 0))
(constraint (= (next 25 REMOVE 100 20 ) 2))
(constraint (= (next 29 REMOVE 100 20 ) 2))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 25 NO_CMD 100 20 ) 5))
(constraint (= (next 26 REMOVE 100 20 ) 2))
(constraint (= (next 30 c_SHEL 100 20 ) 6))
(constraint (= (next 32 REMOVE 100 20 ) 2))
(constraint (= (next 34 c_ACK 100 20 ) 0))
(constraint (= (next 25 REMOVE 100 20 ) 2))
(constraint (= (next 27 NO_CMD 100 20 ) 5))
(constraint (= (next 28 NO_CMD 100 20 ) 5))
(constraint (= (next 29 NO_CMD 100 20 ) 5))
(constraint (= (next 30 NO_CMD 100 20 ) 5))
(constraint (= (next 31 NO_CMD 100 20 ) 5))
(constraint (= (next 32 NO_CMD 100 20 ) 5))
(constraint (= (next 33 NO_CMD 100 20 ) 5))
(constraint (= (next 34 NO_CMD 100 20 ) 5))
(constraint (= (next 35 c_SUPR 100 20 ) 1))
(constraint (= (next 37 c_SUPR 100 20 ) 1))
(constraint (= (next 10 NO_CMD 100 20 ) 4))
(constraint (= (next 25 c_SUPR 100 20 ) 1))
(constraint (= (next 29 c_SHEL 100 20 ) 6))
(constraint (= (next 31 c_SUPR 100 20 ) 1))
(constraint (= (next 33 REMOVE 100 20 ) 2))
(constraint (= (next 35 c_SUPR 100 20 ) 1))
(constraint (= (next 37 NO_CMD 100 20 ) 5))
(constraint (= (next 38 c_SUPR 100 20 ) 1))
(constraint (= (next 43 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 101 NO_CMD 100 20 ) 4))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 NO_CMD 100 20 ) 5))
(constraint (= (next 26 c_ACK 100 20 ) 0))
(constraint (= (next 0 NO_CMD 100 20 ) 4))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 NO_CMD 100 20 ) 5))
(constraint (= (next 26 NO_CMD 100 20 ) 5))
(constraint (= (next 27 RESET 100 20 ) 5))
(constraint (= (next 28 UNSUPR 100 20 ) 5))
(constraint (= (next 29 ADD 100 20 ) 5))
(constraint (= (next 30 UNSHEL 100 20 ) 5))
(constraint (= (next 31 NO_CMD 100 20 ) 5))
(constraint (= (next 32 NO_CMD 100 20 ) 5))
(constraint (= (next 33 c_ACK 100 20 ) 0))
(constraint (= (next 101 NO_CMD 100 20 ) 4))
(constraint (= (next 101 NO_CMD 100 20 ) 4))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 25 c_ACK 100 20 ) 0))
(constraint (= (next 21 NO_CMD 100 20 ) 5))
(constraint (= (next 22 NO_CMD 100 20 ) 5))
(constraint (= (next 23 NO_CMD 100 20 ) 5))
(constraint (= (next 24 NO_CMD 100 20 ) 5))
(constraint (= (next 25 NO_CMD 100 20 ) 5))
(constraint (= (next 26 NO_CMD 100 20 ) 5))
(constraint (= (next 27 NO_CMD 100 20 ) 5))
(constraint (= (next 28 NO_CMD 100 20 ) 5))
(constraint (= (next 29 NO_CMD 100 20 ) 5))
(constraint (= (next 30 NO_CMD 100 20 ) 5))
(constraint (= (next 31 NO_CMD 100 20 ) 5))
(constraint (= (next 32 NO_CMD 100 20 ) 5))
(constraint (= (next 33 NO_CMD 100 20 ) 5))
(constraint (= (next 34 NO_CMD 100 20 ) 5))
(constraint (= (next 35 NO_CMD 100 20 ) 5))
(constraint (= (next 36 NO_CMD 100 20 ) 5))
(constraint (= (next 37 NO_CMD 100 20 ) 5))
(constraint (= (next 38 NO_CMD 100 20 ) 5))
(constraint (= (next 39 NO_CMD 100 20 ) 5))
(constraint (= (next 40 NO_CMD 100 20 ) 5))
(constraint (= (next 41 NO_CMD 100 20 ) 5))
(constraint (= (next 42 NO_CMD 100 20 ) 5))
(constraint (= (next 43 NO_CMD 100 20 ) 5))
(constraint (= (next 44 NO_CMD 100 20 ) 5))
(constraint (= (next 45 NO_CMD 100 20 ) 5))
(constraint (= (next 46 NO_CMD 100 20 ) 5))
(constraint (= (next 47 NO_CMD 100 20 ) 5))
(constraint (= (next 48 NO_CMD 100 20 ) 5))
(constraint (= (next 49 NO_CMD 100 20 ) 5))
(constraint (= (next 50 NO_CMD 100 20 ) 5))
(constraint (= (next 51 NO_CMD 100 20 ) 5))
(constraint (= (next 52 NO_CMD 100 20 ) 5))
(constraint (= (next 53 NO_CMD 100 20 ) 5))
(constraint (= (next 54 NO_CMD 100 20 ) 5))
(constraint (= (next 55 NO_CMD 100 20 ) 5))
(constraint (= (next 56 NO_CMD 100 20 ) 5))
(constraint (= (next 57 NO_CMD 100 20 ) 5))
(constraint (= (next 58 NO_CMD 100 20 ) 5))
(constraint (= (next 59 NO_CMD 100 20 ) 5))
(constraint (= (next 60 NO_CMD 100 20 ) 5))
(constraint (= (next 61 NO_CMD 100 20 ) 5))
(constraint (= (next 62 NO_CMD 100 20 ) 5))
(constraint (= (next 63 NO_CMD 100 20 ) 5))
(constraint (= (next 64 NO_CMD 100 20 ) 5))
(constraint (= (next 65 NO_CMD 100 20 ) 5))
(constraint (= (next 66 NO_CMD 100 20 ) 5))
(constraint (= (next 67 NO_CMD 100 20 ) 5))
(constraint (= (next 68 NO_CMD 100 20 ) 5))
(constraint (= (next 69 NO_CMD 100 20 ) 5))
(constraint (= (next 70 NO_CMD 100 20 ) 5))
(constraint (= (next 71 NO_CMD 100 20 ) 5))
(constraint (= (next 72 NO_CMD 100 20 ) 5))
(constraint (= (next 73 NO_CMD 100 20 ) 5))
(constraint (= (next 74 NO_CMD 100 20 ) 5))
(constraint (= (next 75 NO_CMD 100 20 ) 5))
(constraint (= (next 76 NO_CMD 100 20 ) 5))
(constraint (= (next 77 NO_CMD 100 20 ) 5))
(constraint (= (next 78 NO_CMD 100 20 ) 5))
(constraint (= (next 79 NO_CMD 100 20 ) 5))
(constraint (= (next 80 NO_CMD 100 20 ) 5))
(constraint (= (next 81 NO_CMD 100 20 ) 5))
(constraint (= (next 82 NO_CMD 100 20 ) 5))
(constraint (= (next 83 NO_CMD 100 20 ) 5))
(constraint (= (next 84 NO_CMD 100 20 ) 5))
(constraint (= (next 85 NO_CMD 100 20 ) 5))
(constraint (= (next 86 NO_CMD 100 20 ) 5))
(constraint (= (next 87 NO_CMD 100 20 ) 5))
(constraint (= (next 88 NO_CMD 100 20 ) 5))
(constraint (= (next 89 NO_CMD 100 20 ) 5))
(constraint (= (next 90 NO_CMD 100 20 ) 5))
(constraint (= (next 91 NO_CMD 100 20 ) 5))
(constraint (= (next 92 NO_CMD 100 20 ) 5))
(constraint (= (next 93 NO_CMD 100 20 ) 5))
(constraint (= (next 94 NO_CMD 100 20 ) 5))
(constraint (= (next 95 NO_CMD 100 20 ) 5))
(constraint (= (next 96 NO_CMD 100 20 ) 5))
(constraint (= (next 97 NO_CMD 100 20 ) 5))
(constraint (= (next 98 NO_CMD 100 20 ) 5))
(constraint (= (next 99 NO_CMD 100 20 ) 5))
(constraint (= (next 100 NO_CMD 100 20 ) 5))
(constraint (= (next 101 NO_CMD 100 20 ) 4))

(check-synth)
