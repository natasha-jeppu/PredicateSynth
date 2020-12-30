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
			 5
			 12
			 50
			 594
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

(constraint (= (next 76 593 false ) 6))
(constraint (= (next 76 592 false ) 6))
(constraint (= (next 54 600 false ) 6))
(constraint (= (next 53 597 false ) 6))
(constraint (= (next 51 596 false ) 6))
(constraint (= (next 49 599 false ) 6))
(constraint (= (next 50 598 false ) 6))
(constraint (= (next 51 592 false ) 6))
(constraint (= (next 51 600 false ) 6))
(constraint (= (next 53 595 false ) 6))
(constraint (= (next 50 595 false ) 6))
(constraint (= (next 50 593 false ) 6))
(constraint (= (next 50 596 false ) 6))
(constraint (= (next 38 595 false ) 6))
(constraint (= (next 38 598 false ) 3))
(constraint (= (next 30 583 false ) 3))

(check-synth)
