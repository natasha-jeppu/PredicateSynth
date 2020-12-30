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
			 17
			 61
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

(constraint (= (next 79 598 false ) 1))
(constraint (= (next 82 593 false ) 1))
(constraint (= (next 82 599 false ) 1))
(constraint (= (next 80 596 false ) 1))
(constraint (= (next 56 593 false ) 1))
(constraint (= (next 54 594 false ) 1))
(constraint (= (next 54 600 false ) 1))
(constraint (= (next 53 593 false ) 1))
(constraint (= (next 43 598 false ) 1))
(constraint (= (next 42 595 false ) 1))
(constraint (= (next 42 594 false ) 1))

(check-synth)
