(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 4
			 6
			 64
			 605
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

(constraint (= (next 75 605 false ) 7))
(constraint (= (next 59 609 true ) 2))
(constraint (= (next 61 609 false ) 6))
(constraint (= (next 61 606 false ) 6))
(constraint (= (next 63 602 false ) 7))
(constraint (= (next 62 600 true ) 2))

(check-synth)
