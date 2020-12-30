(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 4
			 82
			 598
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

(constraint (= (next 85 598 false ) 1))
(constraint (= (next 85 598 false ) 1))
(constraint (= (next 84 597 false ) 1))
(constraint (= (next 82 599 false ) 1))
(constraint (= (next 83 596 false ) 1))
(constraint (= (next 74 597 false ) 1))

(check-synth)
