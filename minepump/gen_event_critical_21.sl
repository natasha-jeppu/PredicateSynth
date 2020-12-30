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
			 6
			 54
			 604
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

(constraint (= (next 55 607 true ) 2))
(constraint (= (next 57 604 false ) 6))
(constraint (= (next 58 602 false ) 6))
(constraint (= (next 59 601 false ) 7))
(constraint (= (next 49 605 true ) 2))
(constraint (= (next 45 605 true ) 2))

(check-synth)
