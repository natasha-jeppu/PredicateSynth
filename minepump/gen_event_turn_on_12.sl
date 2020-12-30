(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 12
			 22
			 34
			 536
			 water
			 methane
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 pump
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 73 578 false ) 3))
(constraint (= (next 30 536 false ) 3))
(constraint (= (next 30 552 false ) 3))
(constraint (= (next 30 542 false ) 3))
(constraint (= (next 31 542 false ) 3))
(constraint (= (next 31 550 false ) 3))
(constraint (= (next 31 552 false ) 3))
(constraint (= (next 32 534 false ) 3))
(constraint (= (next 30 531 false ) 3))
(constraint (= (next 30 508 false ) 3))
(constraint (= (next 30 504 false ) 3))

(check-synth)
