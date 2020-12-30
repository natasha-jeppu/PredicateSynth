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

(constraint (= (next 71 602 true ) 2))
(constraint (= (next 72 601 false ) 7))
(constraint (= (next 70 602 true ) 2))
(constraint (= (next 68 602 true ) 2))
(constraint (= (next 69 602 false ) 6))
(constraint (= (next 70 600 false ) 7))

(check-synth)
