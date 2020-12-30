(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 23
			 26
			 65
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

(constraint (= (next 85 598 false ) 4))
(constraint (= (next 85 598 false ) 4))
(constraint (= (next 84 597 false ) 4))
(constraint (= (next 82 599 false ) 4))
(constraint (= (next 83 596 false ) 4))
(constraint (= (next 74 597 false ) 4))
(constraint (= (next 31 553 false ) 4))
(constraint (= (next 32 556 false ) 4))
(constraint (= (next 30 549 false ) 4))

(check-synth)
