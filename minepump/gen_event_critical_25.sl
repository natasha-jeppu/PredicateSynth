(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 47
			 602
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

(constraint (= (next 48 601 true ) 2))
(constraint (= (next 49 601 true ) 2))
(constraint (= (next 47 603 true ) 2))
(constraint (= (next 49 600 false ) 7))
(constraint (= (next 49 604 true ) 2))
(constraint (= (next 43 602 true ) 2))
(constraint (= (next 44 601 false ) 7))

(check-synth)
