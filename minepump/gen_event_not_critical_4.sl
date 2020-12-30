(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 13
			 70
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

(constraint (= (next 84 593 false ) 1))
(constraint (= (next 83 594 false ) 1))
(constraint (= (next 79 597 false ) 1))
(constraint (= (next 80 598 false ) 1))
(constraint (= (next 80 599 false ) 1))
(constraint (= (next 57 597 false ) 1))
(constraint (= (next 57 592 false ) 1))
(constraint (= (next 56 599 false ) 1))
(constraint (= (next 56 594 false ) 1))

(check-synth)
