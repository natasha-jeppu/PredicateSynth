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

(constraint (= (next 29 576 true ) 0))
(constraint (= (next 29 580 true ) 0))
(constraint (= (next 29 587 true ) 0))
(constraint (= (next 28 585 true ) 0))
(constraint (= (next 30 597 true ) 0))
(constraint (= (next 29 598 true ) 6))

(check-synth)
