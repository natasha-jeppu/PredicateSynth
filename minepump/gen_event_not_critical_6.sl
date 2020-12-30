(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 17
			 40
			 596
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

(constraint (= (next 75 594 false ) 0))
(constraint (= (next 33 597 false ) 1))
(constraint (= (next 34 597 false ) 1))
(constraint (= (next 33 598 false ) 1))
(constraint (= (next 33 599 false ) 1))
(constraint (= (next 30 594 false ) 1))

(check-synth)
