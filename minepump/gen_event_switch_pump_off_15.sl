(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 9
			 29
			 587
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

(constraint (= (next 29 576 true ) 5))
(constraint (= (next 29 580 true ) 5))
(constraint (= (next 29 587 true ) 5))
(constraint (= (next 28 585 true ) 5))
(constraint (= (next 30 597 true ) 5))
(constraint (= (next 29 598 true ) 5))

(check-synth)
