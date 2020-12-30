(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 13
			 17
			 46
			 585
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

(constraint (= (next 73 553 false ) 6))
(constraint (= (next 49 600 false ) 6))
(constraint (= (next 49 596 false ) 6))
(constraint (= (next 50 595 false ) 6))
(constraint (= (next 50 599 false ) 6))
(constraint (= (next 46 599 false ) 3))
(constraint (= (next 31 578 false ) 3))
(constraint (= (next 31 574 false ) 3))

(check-synth)
