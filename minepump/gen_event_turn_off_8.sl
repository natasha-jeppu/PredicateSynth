(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 16
			 20
			 37
			 577
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

(constraint (= (next 61 605 true ) 6))
(constraint (= (next 30 577 true ) 0))
(constraint (= (next 28 567 true ) 0))

(check-synth)
