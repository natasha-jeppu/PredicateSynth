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
			 70
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

(constraint (= (next 69 600 true ) 2))
(constraint (= (next 69 606 true ) 2))
(constraint (= (next 71 601 false ) 7))

(check-synth)
