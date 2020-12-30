(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 8
			 29
			 588
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

(constraint (= (next 30 572 true ) 2))
(constraint (= (next 29 583 true ) 2))
(constraint (= (next 30 589 true ) 2))
(constraint (= (next 29 596 true ) 2))
(constraint (= (next 30 596 true ) 2))
(constraint (= (next 29 590 true ) 2))
(constraint (= (next 29 587 true ) 2))

(check-synth)
