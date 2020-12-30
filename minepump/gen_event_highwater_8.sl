(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 22
			 25
			 45
			 578
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

(constraint (= (next 74 601 false ) 7))
(constraint (= (next 30 574 false ) 1))
(constraint (= (next 31 558 false ) 1))

(check-synth)
