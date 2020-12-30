(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 13
			 16
			 37
			 583
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

(constraint (= (next 74 557 false ) 3))
(constraint (= (next 30 582 false ) 3))
(constraint (= (next 30 579 false ) 3))
(constraint (= (next 30 586 false ) 3))
(constraint (= (next 31 591 false ) 3))
(constraint (= (next 30 589 false ) 3))

(check-synth)
